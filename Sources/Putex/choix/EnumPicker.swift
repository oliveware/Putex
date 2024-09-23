//
//  SwiftUIView.swift
//  
//
//  Created by Herve Crespel on 24/04/2024.
//

import SwiftUI

public protocol Selectable: CaseIterable, Hashable, Identifiable {
   // static var all: [Self] {get}
    static var selector: String {get}
    var label: String {get}
   
}

public struct EnumPicker<T:Selectable>: View {
    let cases: [T]
    var prompt: String = ""
    @Binding var selected: T?
    
    public init(_ cases:[T], _ selected:Binding<T?>) {
        self.cases = cases
        self._selected = selected
    }
    
    public var body: some View {
        Picker(T.selector, selection:$selected) {
          //  Text("\t\(T.selector)").tag(nil as T?)
            ForEach (cases) { item in
                Text(item.label).tag(item as T?)
            }
        }//.pickerStyle(.radioGroup)
        .frame(width: 300, height: 40, alignment: .center)
    }
}

struct BankPreview: View  {
    @State var data : CompteBancaire?
    var body: some View {
        EnumPicker<CompteBancaire>(CompteBancaire.all, $data)
            .frame(width:400, height:150)
    }
}
#Preview("bancaire") {
    BankPreview()
}

struct AnaPreview: View  {
    @State var data : CompteAnalytique?
    var body: some View {
        EnumPicker<CompteAnalytique>(CompteAnalytique.all, $data)
            .frame(width:400, height:150)
    }
}
#Preview("analytique") {
    AnaPreview()
}
