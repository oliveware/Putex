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
    @State var more = false
    @State var edition :Bool
    @State var suppression = false
    
    var width : CGFloat {
        var nbc = 0
        for head in heads {
            let long = head.label.count
            if long > nbc { nbc = long }
        }
        return CGFloat(nbc * 8)
    }
    
    public init(_ prompt:Mot, _ heads:Binding<[Head]>,_  domains:[(prompt: String, cas:Codomain)],_ editable:Bool = false) {
        _heads = heads
        self.domains = domains
        self.prompt = prompt
        edition = editable
    }
    
    public var body: some View {
        VStack {
            if heads.count == 0 {
                Button(action:{more = true})
                {Text("ajouter " + prompt.indéterminé)}
                    .sheet(isPresented: $more)
                { HeadPicker($head, domains, prompt, add)}
            } else {
                GroupBox (heads.count < 2 ? prompt.singulier : prompt.pluriel) {
                    ForEach(heads) {
                        head in HStack {
                            if suppression {
                                Button(action:{
                                    delete(head)
                                    suppression = false
                                })
                                {Image(systemName: "minus")}
                            }
                            Text(head.label)
                        }.frame(width: width + 16)
                    }
                }
                if edition {
                    HStack {
                        Button(action:{suppression.toggle()})
                        {Image(systemName: "minus")}
                        Spacer()
                        Button(action:{more = true})
                        {Image(systemName: "plus")}
                            .sheet(isPresented: $more)
                        { HeadPicker($head, domains, prompt, add)}
                    }.frame(width: width + 16)
                }
            }
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
        head = nil
    }
    func delete(_ head:Head) {
        var new : [Head] = []
        for h in heads {
            if h.label != head.label { new.append(head) }
        }
        heads = new
    }
}

struct HeadListPreview : View {
    @State var heads:[Head] = [Head("untel machin"), Head("untel machine")]
    var editable = false
    var body: some View {
        HeadList(Mot("partie", "parties", .f), $heads, [(prompt: "particulier", cas:.human)], editable )
    }
}

#Preview {
    HeadListPreview().frame(width:200, height:100)
}

#Preview("editable") {
    HeadListPreview(editable:true).frame(width:200, height:100)
}
