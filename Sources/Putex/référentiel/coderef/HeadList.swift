//
//  HeadList.swift
//  Putex
//
//  Created by Herve Crespel on 26/03/2026.
//

import SwiftUI
import Taxionomy

struct HeadList : View {
    @Binding var heads:[Head]
    var table : (prompt:String, cas:Codomain)
    var prompt: Mot
    @State var head: Head?
    
    init(_ heads:Binding<[Head]>,_  domain:Codomain, _ prompt: Mot) {
        _heads = heads
        table = (prompt:domain.rawValue, cas:domain)
        self.prompt = prompt
    }
    
    
    var body: some View {
        VStack {
            ForEach(heads) {
                head in
                Text("head.label")
            }
            HeadPicker($head, [table], prompt)
                .onChange(of:head, {
                    if let head = head { heads.append(head) }
            })
        }
    }
}

struct HeadListPreview : View {
    @State var heads:[Head] = []
    var body: some View {
        HeadList($heads, .human, Mot("partie", "parties", .f))
    }
}

#Preview {
    HeadListPreview().frame(width:200, height:100)
}
