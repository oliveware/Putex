//
//  TablerefPicker.swift
//  Putex
//
//  Created by Herve Crespel on 01/10/2024.
//

import SwiftUI

public struct TablerefPicker: View {
    var prompt = ""
    var width: CGFloat = 130
    var height: CGFloat = 125
    
    var table : Tableref
    @Binding var selected : Tablitem?
    
    init(_ table:Tableref, _ selected:Binding<Tablitem?>) {
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
                       /* Button(table.items[index].label) {
                            choose(table.items[index])
                        }.frame(width:width)*/
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
    
    func choose(_ item:Tablitem) {
        selected = item
    }
}



struct TablerefPickerPreview : View {
    @State var table = banques
    @State var item: Tablitem? = nil
    
    var body: some View {
        VStack {
            TablerefPicker(table, $item)
                .frame(width:300)
            Text(item?.label ?? "")
        }.padding(10)
    }
}


#Preview {
    TablerefPickerPreview()
}
