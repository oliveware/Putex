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

public struct CodePicker: View {
    var prompt = ""
    var width: CGFloat = 130
    var height: CGFloat = 125
    
    var table : Coderef
    @Binding var selected : String?
    @State var choice:String
    @State var open = false
    
    public init(_ table:Coderef, _ selected:Binding<String?>, _ prompt:String?, _ choice:String?) {
        self.prompt = prompt ?? table.name.pluriel
        self.table = table
        _selected = selected
        self.choice = choice ?? "choisir " + table.name.indéterminé
    }
    
    public var body: some View {
        HStack {
            if prompt != "" {Text(prompt)}
            Button(action:{open = true})
            {
                Text(choice)
            }
            .sheet(isPresented: $open, content: {CodeChoice($open, table, $selected, $choice, prompt)})
        }
    }
}



struct CodePickerPreview : View {
   var table = banques
    @State var item: String? = nil
    
    var body: some View {
        VStack {
            Text("le choix en sheet retourne un code")
                .font(.title2)
                .padding(20)
            CodePicker(table, $item, "", nil)
                .frame(width:300)
            Text(item == nil ? "" : "code choisi: " + item!)
        }.padding(10)
    }
}

struct CodeChoicePreview : View {
   var table = banques
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


#Preview("picker") {
    CodePickerPreview()
}

#Preview("choice") {
    CodeChoicePreview()
}
