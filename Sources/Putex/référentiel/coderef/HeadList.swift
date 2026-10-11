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
                 HeadPicker($head, domains, prompt, add)
            } else {
                HStack(alignment: .center ) {
                    if edition{
                        Button(action:{suppression.toggle()})
                        {Image(systemName: "trash")}.buttonStyle(.plain)}
                    GroupBox (heads.count < 2 ? prompt.singulier : prompt.pluriel) {
                        ForEach($heads) {
                            head in HStack {
                                if suppression {
                                    Button(action:{
                                        delete(head.wrappedValue)
                                        suppression = false
                                    })
                                    {Image(systemName: "trash")}.buttonStyle(.plain)
                                }
                                Text(head.wrappedValue.label)
                            }.frame(width: width + 16)
                        }
                    }
                    if edition {
                        Button(action:{more = true})
                        {Image(systemName: "plus")}.buttonStyle(.plain)
                            .sheet(isPresented: $more)
                        { HeadPicker($head, domains, prompt, add) }
                    }
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
        more = false
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
    @State var heads:[Head] = [Head("untel machin"), Head("untel truc")]
    var editable = false
    var body: some View {
        HeadList(Mot("partie", "parties", .f), $heads, [(prompt: "particulier", cas:.human),(prompt: "organisation", cas:.company)], editable )
            .frame(width:200, height:200)
    }
}

#Preview("show") {
    HeadListPreview()
}

#Preview("editable") {
    HeadListPreview(editable:true)
}

#Preview("vide") {
    HeadListPreview(heads:[])
}
