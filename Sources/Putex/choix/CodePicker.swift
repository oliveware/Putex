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
    
    public init(_ table:Coderef, _ selected:Binding<String?>, _ prompt:String?) {
        self.prompt = prompt ?? table.name.pluriel
        self.table = table
        _selected = selected
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
                   /* Button( action: {
                        table.insert(Coditem("id","label"))
                    }){
                        Text("ajouter un item")
                            .frame(width:width)
                    }.padding(.top, 10)*/
                }.frame(alignment: .center)
            }.frame(height:height)
                      
        }
    }
    
    func choose(_ item:Coditem) {
        selected = item.code
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
            Text(item == nil ? "" : "code : " + item!)
        }.padding(10)
    }
}


#Preview {
    CodePickerPreview()
}
