//
//  HeadPicker.swift
//  Putex
//
//  Created by Herve Crespel on 23/03/2026.
//
import SwiftUI
import Taxionomy

public struct HeadPicker: View {
    var prompt : Mot
    var width: CGFloat = 130
    var height: CGFloat {
        var h = 0
        for table in tables {
            var steps = table.ref.items.count
            if steps < 3 { steps = 3 }
            else if steps > 5 { steps = 5 }
            if steps > h { h = steps }
        }
        return CGFloat(h) * 30
    }
    
    var tables : [(prompt:String, ref:Coderef)]
    private var domains:[Codomain] = []
    @Binding var head : Head?
    @State var newlabel :String
    @State var edition = true
    @State var choice = true
    var done: () -> Void
    
    var label:String {
        if let head = head {
            let mot = head.domain == .NA ? prompt : head.domain.name
            var inconnu = mot.singulier + " inconnu"
            if mot.genre == .f { inconnu += "e"}
            if head.label == "" {
                return inconnu
            } else {
               return head.label
            }
        } else {
            var inconnu = prompt.singulier + " inconnu"
            if prompt.genre == .f { inconnu += "e"}
            return inconnu
        }
    }
    
    /*public init(_ choice: Binding<Bool>, _ table:Coderef, _ selected:Binding<Head?>,_ prompt:String?) {
        self.prompt = prompt ?? "Choisir " + table.name.indéterminé
        self.table = table
        _head = selected
        _choice = choice
    }*/
    
    public init(_ head:Binding<Head?>, _ domains:[(prompt:String, cas:Codomain)], _ prompt:Mot, _  done: @escaping () -> Void = {}) {
        var tables : [(prompt:String, ref:Coderef)] = []
        for domain in domains {
            tables.append((prompt:domain.prompt, ref:Coderef.find(domain.cas)))
            self.domains.append(domain.cas)
        }
        self.tables = tables
        self.prompt = prompt
        _head = head
        if let h = head.wrappedValue {
            choice = h.label == "" || h.domain == .NA
            newlabel = h.label
        } else {
            choice = true
            newlabel = ""
        }
        self.done = done
    }
    public init(_ head:Binding<Head?>, _ ref:Coderef, _ prompt:Mot? = nil,  _  done: @escaping () -> Void = {}) {
        self.prompt = prompt ?? ref.name
        tables = [(prompt:prompt?.singulier ?? ref.name.singulier, ref:ref)]
        domains = [ref.domain]
        _head = head
        if let h = head.wrappedValue {
            choice = h.label == "" || h.domain == .NA
            newlabel = h.label
        } else {
            choice = true
            newlabel = ""
        }
        self.done = done
    }
    
    var choicepanel : some View {
        HStack {
            ForEach(0..<tables.count, id:\.self) {
                i in
                VStack {
                    if tables[i].ref.items.count > 0 && choice {
                        GroupBox(tables[i].prompt) {
                            ScrollView {
                                ForEach(tables[i].ref.items) {
                                    head in
                                    Button( action: { choose(head) } )
                                    { Text(head.label) }
                                        .buttonStyle(.plain)
                                }
                            }.frame(height:height)
                        }.padding()
                    }
                    HStack {
                        TextField("", text:$newlabel)
                        Button(action:{choose(Head(Coderef.newcode(domains[i]),newlabel))})
                        {Image(systemName: "checkmark")}.buttonStyle(.plain)
                    }
                }
            }
        }.padding().border(.gray, width: 1)
    }
    
    public var body: some View {
        HStack {
            if edition {
                choicepanel
            } else {
                Text(head?.label ?? "choisir")
                Button(action:{ edition = true ; choice = true ; self.head = nil})
                {Image(systemName: "magnifyingglass")}.buttonStyle(.plain)
            }
        }
        //Button("annuler", action:{choice = false})
    }
    
    func choose(_ item:Head) {
        head = item
        choice = false
        edition = false
        done()
    }
}

struct HeadPickerPreview : View {
   var table = tables["banques"]!
    var prompt = Mot("banque", "banques", .f)
    @State var head: Head? = nil
    @State var choice = false
    
    var body: some View {
        VStack {
            Text("le choix retourne un head avec ou sans id")
                .font(.title2)
                .padding(20)
           
            HeadPicker($head, table, prompt)
                .frame(width:250, height:300)
          
        }.padding(10)
    }
}

#Preview("choice") {
    HeadPickerPreview()
}

#Preview("choice 2") {
    HeadPickerPreview()
}
