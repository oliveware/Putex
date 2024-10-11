//
//  CodePicker.swift
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
    @Binding var selected : String?
    @Binding var choice : String
    
    public init(_ table:Coderef, _ selected:Binding<String?>, _ choice:Binding<String>,_ prompt:String?) {
        self.prompt = prompt ?? table.name.pluriel
        self.table = table
        _selected = selected
        _choice = choice
    }
    
    public var body: some View {
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
    }
    
    func choose(_ item:Coditem) {
        selected = item.code
        choice = item.label
    }
}

public struct CodePicker: View {
    var prompt = ""
    var width: CGFloat = 130
    var height: CGFloat = 125
    
    var table : Coderef
    @Binding var selected : String?
    @State var choice:String
    @State var open = false
    
    public init(_ table:Coderef, _ selected:Binding<String?>, _ prompt:String?) {
        self.prompt = prompt ?? table.name.pluriel
        self.table = table
        _selected = selected
        choice = "choisir " + table.name.singulier
    }
    
    public var body: some View {
        HStack {
            Text(prompt)
            Button(action:{open = true})
            {
                Text(choice)
            }
            .sheet(isPresented: $open, content: {CodeChoice(table, $selected, $choice, prompt)})
        }
    }
}



struct CodePickerPreview : View {
   var table = banques
    @State var item: String? = nil
    
    var body: some View {
        VStack {
            Text("le choix retourne un code")
                .font(.title2)
                .padding(20)
            CodePicker(table, $item, "")
                .frame(width:300)
            Text(item == nil ? "" : "code choisi: " + item!)
        }.padding(10)
    }
}

struct CodeChoicePreview : View {
   var table = banques
    @State var code: String? = nil
    @State var choice = ""
    
    var body: some View {
        VStack {
            Text("le choix retourne un code")
                .font(.title2)
                .padding(20)
            CodeChoice(table, $code, $choice, "")
                .frame(width:300)
            Text(code == nil ? "" : "code choisi: " + code!)
        }.padding(10)
    }
}


#Preview("picker") {
    CodePickerPreview()
}

#Preview("choice") {
    CodeChoicePreview()
}
