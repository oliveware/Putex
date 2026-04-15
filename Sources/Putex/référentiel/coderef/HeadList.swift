//
//  HeadList.swift
//  Putex
//
//  Created by Herve Crespel on 26/03/2026.
//

import SwiftUI
import Taxionomy

public struct HeadList : View {
    @Binding var heads:[Head]
    var domains : [(prompt:String, cas:Codomain)]
    var prompt: Mot
    @State var head: Head?
    
    public init(_ prompt:Mot, _ heads:Binding<[Head]>,_  domains:[(prompt: String, cas:Codomain)]) {
        _heads = heads
        self.domains = domains
        self.prompt = prompt
    }
    
    
    public var body: some View {
        VStack {
            ForEach(heads) {
                head in
                Text(head.label)
            }
            HeadPicker($head, domains, prompt, add)
        }
    }
    func add() {
        var new = true
        if let head = head {
            for h in heads {
                if h == head { new = false }
            }
            if new { heads.append(head) }
        }
    }
}

struct HeadListPreview : View {
    @State var heads:[Head] = []
    var body: some View {
        HeadList(Mot("partie", "parties", .f), $heads, [(prompt: "particulier", cas:.human)],  )
    }
}

#Preview {
    HeadListPreview().frame(width:200, height:100)
}
