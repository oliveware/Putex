//
//  SwiftUIView.swift
//  
//
//  Created by Herve Crespel on 24/04/2024.
//

import SwiftUI

protocol Selectable: CaseIterable, Hashable, Identifiable {
   // static var all: [Self] {get}
    static var selector: String {get}
    var label: String {get}
   
}

struct EnumPicker<T:Selectable>: View {
    let cases: [T]
    var prompt: String = ""
    @Binding var selected: T?
    
    var body: some View {
        Picker(T.selector, selection:$selected) {
            //Text("\t\(prompt)").tag(nil as T?)
            ForEach (cases) { item in
                Text(item.label).tag(item as T?)
            }
        }//.pickerStyle(.radioGroup)
        .frame(width: 120, height: 40, alignment: .center)
    }
}



