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
    var width: CGFloat = 150
    var height: CGFloat { CGFloat([table.ref.items.count, 5].max() ?? 5) * 15 }
   
    
    var table : (prompt:String, ref:Coderef)
    private var domain:Codomain
    @Binding var head : Head?
    @State var newlabel: String
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
    
    public init(_ head:Binding<Head?>, _ ref:Coderef, _ prompt:Mot? = nil,  _  done: @escaping () -> Void = {}) {
        self.prompt = prompt ?? ref.name
        table = (prompt:prompt?.singulier ?? ref.name.singulier, ref:ref)
        domain = ref.domain
        _head = head
        if let h = head.wrappedValue {
            edition = h.label == "" || h.domain == .NA
            newlabel = h.domain == domain ? h.label : ""
        } else {
            edition = true
            newlabel = ""
        }
        self.done = done
    }
    
    var choicepanel : some View {
        VStack {
            if table.ref.items.count > 0 && choice {
                GroupBox(table.prompt) {
                    ScrollView {
                        ForEach(table.ref.items) {
                            head in
                            Button( action: { choose(head) } )
                            { Text(head.label) }
                                .buttonStyle(.plain)
                        }
                    }.frame(height:height).padding(.horizontal)
                }
            }
            HStack {
                TextField("", text:$newlabel)
                Button(action:{choose(Head(Coderef.newcode(domain),newlabel))})
                {Image(systemName: "checkmark")}.buttonStyle(.plain)
            }.padding(.top,1)
        }.frame(width:width)
    }
    
    public var body: some View {
        HStack {
            if edition {
                choicepanel
            } else {
                Text(head?.label ?? "choisir")
                Button(action:{ edition = true ; choice = true
                    if let head = head {
                        if newlabel != head.label {newlabel = ""}
                    }
                })
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
    HeadPickerPreview(head:(Head("O#12","banky")))
}
