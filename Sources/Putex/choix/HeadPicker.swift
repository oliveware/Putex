//
//  HeadPicker.swift
//  Putex
//
//  Created by Herve Crespel on 23/03/2026.
//
import SwiftUI

public struct HeadPicker: View {
    var prompt = ""
    var width: CGFloat = 130
    var height: CGFloat {
        var h = 0
        for table in tables {
            var steps = table.items.count
            if steps < 3 { steps = 3 }
            else if steps > 5 { steps = 5 }
            if steps > h { h = steps }
        }
        return CGFloat(h) * 30
    }
    
    var tables : [Coderef]
    @Binding var head : Head?
    @State var input : Bool
    @State var choice = false
    
    var label:String {
        if let head = head {
            let mot = head.domain.name
            var inconnu = mot.singulier + " inconnu"
            if mot.genre == .f { inconnu += "e"}
            if head.label == "" {
                return inconnu
            } else {
               return head.label
            }
        } else { return prompt + " inconnu" }
    }
    
    /*public init(_ choice: Binding<Bool>, _ table:Coderef, _ selected:Binding<Head?>,_ prompt:String?) {
        self.prompt = prompt ?? "Choisir " + table.name.indéterminé
        self.table = table
        _head = selected
        _choice = choice
    }*/
    
    public init(_ head:Binding<Head?>, _ domains:[Codomain], _ prompt:String) {
        var refs : [Coderef] = []
        for domain in domains {
            refs.append(Coderef.find(domain))
        }
        tables = refs
        self.prompt = prompt
        _head = head
        if let h = head.wrappedValue {
            input = h.label == "" || h.domain == .NA
        } else {
            input = true
        }
    }
    public init(_ head:Binding<Head?>, _ ref:Coderef, _ prompt:String?) {
        self.prompt = prompt ?? ref.name.singulier
        tables = [ref]
        _head = head
        if let h = head.wrappedValue {
            input = h.label == "" || h.domain == .NA
        } else {
            input = true
        }
    }
    
    var tablesheet : some View {
        VStack{
            HStack {
                ForEach(tables) { table in
                    if table.items.count > 0 {
                        GroupBox(table.name.indéterminé) {
                            ScrollView {
                                ForEach(table.items) {
                                    head in
                                    Button( action: { choose(head) } )
                                    { Text(head.label) }
                                    //.param(w: width, h: 20)
                                }
                            }.frame(height:height)
                        }
                    }
                }
            }
            Button("annuler", action:{choice = false})
        }//.frame(height:height + 50)
    }
    
    public var body: some View {
        HStack {
            if let head = head {
                if input {
                    if prompt != "" {Text(prompt)}
                    TextField("", text:Binding<String>(
                        get: {head.label},
                        set:{self.head = Head("",$0)}
                    ))
                    Button(action:{input = false})
                    {Image(systemName: "checkmark")}
                    
                    Button(action:{choice = true})
                    {Image(systemName: "magnifyingglass")}
                    .sheet(isPresented: $choice) {tablesheet}
                } else {
                    Text(label)
                    Button(action:{ input = true })
                    {Image(systemName: "pencil")}
                }
            } else {
                Button(prompt, action:{
                    head = Head("","") ;  input = true
                })
            }
        }
    }
    
    func choose(_ item:Head) {
        head = item
        choice = false
        input = false
    }
}

struct HeadPickerPreview : View {
   var table = tables["banques"]!
    @State var head: Head? = nil
    @State var choice = false
    
    var body: some View {
        VStack {
            Text("le choix retourne un head avec ou sans id")
                .font(.title2)
                .padding(20)
           
            HeadPicker($head, table, "banque")
                .frame(width:250, height:300)
          
        }.padding(10)
    }
}

#Preview("choice") {
    HeadPickerPreview()
}
