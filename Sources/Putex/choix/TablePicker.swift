//
//  TablePicker.swift
//  Putex
//
//  Created by Herve Crespel on 01/10/2024.
//

import SwiftUI

public struct TablePicker: View {
    var prompt = ""
    var width: CGFloat = 200
    var height: CGFloat = 25
    
    var table : Table
    @Binding var selected : Tablitem?
    
    init(_ table:Table, _ selected:Binding<Tablitem?>) {
        self.table = table
        prompt = table.selector
        _selected = selected
    }
    
    public var body: some View {
       
        VStack {
            if prompt != "" {
                Text(prompt).font(.caption)
            }
            Picker(prompt, selection: $selected) {
                ForEach (table.items) {
                    item in
                    Text(item.description).tag(item)
                }
            }
            .frame(width: width, height: 25, alignment: .leading)
        }
            
    }
}

struct TablePickerPreview : View {
    @State var table = banques
    @State var item: Tablitem? = nil
    
    var body: some View {
        TablePicker(table, $item)
            .frame(width:300)
    }
}


#Preview {
    TablePickerPreview()
}
