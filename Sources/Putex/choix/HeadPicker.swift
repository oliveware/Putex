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
        var steps = table.items.count
        if steps < 3 { steps = 3 }
        else if steps > 5 { steps = 5 }
        return CGFloat(steps) * 30
    }
    
    var table : Coderef
    @Binding var head : Head?
    @State var input : Bool
    @State var choice = false
    
    var label:String {
        var inconnu = table.name.singulier + " inconnu"
        if table.name.genre == .f { inconnu += "e"}
        if let head = head {
            if head.label == "" {
                return inconnu
            } else {
               return head.label
            }
        } else { return inconnu }
    }
    
    /*public init(_ choice: Binding<Bool>, _ table:Coderef, _ selected:Binding<Head?>,_ prompt:String?) {
        self.prompt = prompt ?? "Choisir " + table.name.indéterminé
        self.table = table
        _head = selected
        _choice = choice
    }*/
    
    public init(_ head:Binding<Head?>, _ domain:Codomain, _ prompt:String?) {
        let table = Coderef.find(domain)
        self.prompt = prompt ?? table.name.singulier
        self.table = table
        _head = head
        if let h = head.wrappedValue {
            input = h.label == "" || h.domain == .NA
        } else {
            input = true
        }
    }
    public init(_ head:Binding<Head?>, _ ref:Coderef, _ prompt:String?) {
        let table = ref
        self.prompt = prompt ?? table.name.singulier
        self.table = table
        _head = head
        if let h = head.wrappedValue {
            input = h.label == "" || h.domain == .NA
        } else {
            input = true
        }
    }
    
    public var body: some View {
        HStack {
            if choice {
                VStack {
                    GroupBox("choisir " + table.name.indéterminé) {
                        ScrollView {
                            ForEach(table.items) {
                                head in
                                Button( action: { choose(head) } )
                                { Text(head.label) }
                                //.param(w: width, h: 20)
                            }
                        }.frame(height:height)
                    }
                    Button("annuler", action:{choice = false})
                }//.frame(height:height + 50)
            } else {
                if let head = head {
                    if input {
                        if prompt != "" {Text(prompt)}
                        TextField("", text:Binding<String>(
                            get: {head.label},
                            set:{self.head = Head("",$0)}
                        ))
                        Button(action:{input = false})
                        {Image(systemName: "checkmark")}
                        if table.items.count > 0 {
                            Button(action:{choice = true})
                            {Image(systemName: "magnifyingglass")}
                        }
                    } else {
                        Text(label)
                        Button(action:{ input = true })
                        {Image(systemName: "pencil")}
                    }
                } else {
                    Button(action:{head = Head("","") ;  input = true})
                    { Text(head == nil ? table.name.singulier : head!.label) }
                        .disabled(table.items.isEmpty)
                }
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
