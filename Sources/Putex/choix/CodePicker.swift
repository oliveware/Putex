//
//  CodePicker.swift
//  Putex
//
//  Created by Herve Crespel on 01/10/2024.
//

import SwiftUI

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

#Preview("picker") {
    CodePickerPreview()
}

