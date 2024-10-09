//
//  ClassPicker.swift
//  Putex
//
//  Created by Herve Crespel on 04/10/2024.
//

public protocol Pickable {
    var id:String {get}
    var label:String {get}
}

import SwiftUI

public struct ItemChooser<T:Pickable>: View {
    var width: CGFloat = 200
    var height: CGFloat = 125
    var prompt:String
    var items : [T]
    @Binding var selected : String?
    
    public init(_ prompt:String, _ items:[T], _ selected:Binding<String?>) {
        self.prompt = prompt
        self.items = items
        // prompt = T.selector
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



struct ItemChooserPreview : View {
    @State var table = banques
    @State var itemid: String? = nil
    
    var body: some View {
        VStack {
            ItemChooser("banque",table.items, $itemid)
                .frame(width:300)
            if itemid != nil {
                Text(table[itemid!])
            }
        }.padding(10)
    }
}


#Preview {
    ItemChooserPreview()
}
