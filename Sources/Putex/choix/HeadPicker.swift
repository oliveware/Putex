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
    var height: CGFloat = 125
    
    var table : Coderef
    @Binding var head : Head?
    @State var ajout = false
    @State var open = false
    
    /*public init(_ open: Binding<Bool>, _ table:Coderef, _ selected:Binding<Head?>,_ prompt:String?) {
        self.prompt = prompt ?? "Choisir " + table.name.indéterminé
        self.table = table
        _head = selected
        _open = open
    }*/
    
    public init(_ head:Binding<Head?>, _ domain:Codomain) {
        table = Coderef.find(domain)
        _head = head
    }
    public init(_ head:Binding<Head?>, _ ref:Coderef) {
        table = ref
        _head = head
    }
    
    public var body: some View {
        if open {
            VStack {
                Text(prompt)
                ScrollView {
                    VStack(spacing:2){
                        ForEach(table.items) {
                            head in
                            Button( action: {
                                choose(head)
                            }){
                                Text(head.label)
                            }
                            //.param(w: width, h: 20)
                        }
                        
                    }.frame(alignment: .center)
                }.frame(height:height)
            }
        } else {
            if let head = head {
                HStack {
                    if ajout {
                        TextField(prompt,text:Binding<String>(
                            get: {head.label},
                            set:{self.head = Head("",$0)}
                        ))
                        Button(action:{ajout = false})
                        {Image(systemName: "checkmark")}
                        Button(action:{open = true})
                        {Image(systemName: "magnifyingglass")}
                    } else {
                        Text(head.label)
                        Button(action:{ ajout = true })
                        {Image(systemName: "pencil")}
                        
                    }
                }
            } else {
                Button(action:{open = true})
                { Text(head == nil ? table.name.singulier : head!.label) }
                    .disabled(table.items.isEmpty)
            }
        }
        
    }
    
    func choose(_ item:Head) {
        head = item
        open = false
        ajout = false
    }
}

struct HeadPickerPreview : View {
   var table = tables["banques"]!
    @State var head: Head? = nil
    @State var open = false
    
    var body: some View {
        VStack {
            Text("le choix retourne un head avec ou sans id")
                .font(.title2)
                .padding(20)
           
            HeadPicker($head, table)
                    .frame(width:200)
          
        }.padding(10)
    }
}

#Preview("choice") {
    HeadPickerPreview()
}
