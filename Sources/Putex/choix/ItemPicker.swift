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
    var done: () -> Void
    
    public init(_ items:[T], _ selected:Binding<T>, _ done: @escaping () -> Void) {
        self.items = items
        _selected = selected
        self.done = done
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
        done()
    }
}

struct ItemPickerPreview : View {
    @State var items = Devise.all.all
    @State var item = Devise.unknown
    
    var body: some View {
        VStack {
            ItemPicker(items, $item, done)
                //.frame(width:300,height:450)
            Text(item.label + " - " + (item.symbol ?? "symbole absent"))
        }.padding(10)
            //.frame(height:400)
    }
    
    func done(){}
}


#Preview {
    ItemPickerPreview()
}
