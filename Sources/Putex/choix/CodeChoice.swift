//
//  CodeChoice.swift
//  Putex
//
//  Created by Herve Crespel on 01/10/2024.
//

import SwiftUI

public struct CodeChoice: View {
    var prompt = ""
    var width: CGFloat = 130
    var height: CGFloat = 125
    
    var table : Coderef
    @Binding var code : String?
    @Binding var label : String
    @Binding var open:Bool
    
    public init(_ open: Binding<Bool>, _ table:Coderef, _ selected:Binding<String?>, _ choice:Binding<String>,_ prompt:String?) {
        self.prompt = prompt ?? "Choisir " + table.name.indéterminé
        self.table = table
        _code = selected
        _label = choice
        _open = open
    }
    
    public var body: some View {
        if open {
            VStack {
                Text(prompt)
                ScrollView {
                    VStack(spacing:2){
                        ForEach(0..<table.items.count, id: \.self) {
                            index in
                            Button( action: {
                                choose(table.items[index])
                            }){
                                Text(table.items[index].label)
                                    .frame(width:width)
                            }
                            //.param(w: width, h: 20)
                        }
                        
                    }.frame(alignment: .center)
                }.frame(height:height)
            }
        } else {
            Button(action:{open = true})
            {
                Text(code == nil ? table.name.singulier : label)}
            .disabled(table.items.isEmpty)
        }
        
    }
    
    func choose(_ item:Head) {
        code = item.code
        label = item.label
        open = false
    }
}

struct CodeChoicePreview : View {
   var table = tables["banques"]!
    @State var code: String? = nil
    @State var label = "choisir une banque"
    @State var open = false
    
    var body: some View {
        VStack {
            Text("le choix retourne code et label")
                .font(.title2)
                .padding(20)
           
                CodeChoice($open, table, $code, $label, nil)
                    .frame(width:300)
          
        }.padding(10)
    }
}

#Preview("choice") {
    CodeChoicePreview()
}
