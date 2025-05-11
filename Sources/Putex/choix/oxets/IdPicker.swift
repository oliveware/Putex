//
//  ClassPicker.swift
//  Putex
//
//  Created by Herve Crespel on 04/10/2024.
//


import SwiftUI

public struct IdPicker<T:Oxet>: View {
    var width: CGFloat = 200
    var height: CGFloat = 125
    var prompt:String
    var items : [T]
    @Binding var selected : String
    
    public init(_ items:[T], _ selected:Binding<String>, _ prompt:String? ) {
        self.prompt = prompt ?? T.selector
        self.items = items
        _selected = selected
    }
    
    public var body: some View {
        VStack {
            Text(prompt)
            ScrollView {
                VStack(spacing:2){
                    ForEach(0..<items.count, id: \.self) {
                        index in
                        Button( action: {
                            choose(items[index])
                        }){
                            Text(items[index].label)
                                .frame(width:width)
                        }
                    }
                }.frame(alignment: .center)
            }.frame(height:height)
        }
    }
    
    func choose(_ item:T) {
        selected = item.id
    }
}



struct IdPickerPreview : View {
    @State var table = tables["banques"]!
    @State var itemid: String = ""
    
    var body: some View {
        VStack {
            Text("le choix retourne un id")
                .font(.title2)
                .padding(20)
            IdPicker(table.items, $itemid, "banque")
                .frame(width:300)
            if itemid != "" {
                Text("id : " + itemid)
            }
        }.padding(10)
    }
}


#Preview {
    IdPickerPreview()
}
