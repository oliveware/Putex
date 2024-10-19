//
//  ItemPicker.swift
//  Putex
//
//  Created by Herve Crespel on 19/10/2024.
//

import SwiftUI

public struct ItemPicker<T:Pickable>: View {
    var width: CGFloat = 200
    var height: CGFloat = 65
    var items : [T]
    @Binding var selected : T
    
    public init(_ items:[T], _ selected:Binding<T>) {
        self.items = items
        _selected = selected
    }
    
    public var body: some View {
        ScrollView {
            VStack(spacing:2){
                ForEach(0..<items.count, id: \.self) {
                    index in
                    let item = items[index]
                   
                    Button( action: {
                        choose(item)
                    }){
                        Text(item.label)
                            .frame(width:width)
                    }
                }
            }
        }.frame(alignment: .center)
    }
    
    
    func choose(_ item:T) {
        selected = item
    }
}

struct ItemPickerPreview : View {
    @State var items = Devise.all.all
    @State var item = Devise.unknown
    
    var body: some View {
        VStack {
            ItemPicker(items, $item)
                //.frame(width:300,height:450)
            Text(item.label + " - " + (item.symbol ?? "symbole absent"))
        }.padding(10)
            //.frame(height:400)
    }
}


#Preview {
    ItemPickerPreview()
}
