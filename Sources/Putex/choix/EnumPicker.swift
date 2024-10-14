//
//  SwiftUIView.swift
//  
//
//  Created by Herve Crespel on 24/04/2024.
//

import SwiftUI

public protocol Enumerable: CaseIterable, Hashable, Identifiable {
   // static var all: [Self] {get}
    static var selector: String {get}
    var label: String {get}
   
}

public struct EnumPicker<T:Enumerable>: View {
    let cases: [T]
    var prompt: String = ""
    var vertical = false
    @Binding var selected: T?
    
    public init(_ cases:[T], _ selected:Binding<T?>, _ vorh:Bool = false) {
        self.cases = cases
        self._selected = selected
        vertical = vorh
    }
    
    public var body: some View {
        if vertical {
            VStack(alignment:.leading) {
                Text(T.selector).font(.caption)
                    .padding(.leading,10)
                Picker("", selection:$selected) {
                    ForEach (cases) { item in
                        Text(item.label).tag(item as T?)
                    }
                }
            }
        } else {
            Picker(T.selector, selection:$selected) {
                //  Text("\t\(T.selector)").tag(nil as T?)
                ForEach (cases) { item in
                    Text(item.label).tag(item as T?)
                }
            }//.pickerStyle(.radioGroup)
        }
    }
}

struct BankPreview: View  {
    @State var data : TypeCompteBancaire?
    var body: some View {
        VStack {
            Text("le choix retourne un cas d'énumération")
                .font(.title2)
                .padding(20)
            EnumPicker<TypeCompteBancaire>(TypeCompteBancaire.all, $data)
                .frame(width:300, height:150)
        }
    }
}
#Preview("bancaire") {
    BankPreview()
}

struct AnaPreview: View  {
    @State var data : TypeCompteAnalytique?
    var body: some View {
        VStack {
            Text("le choix retourne un cas")
                .font(.title2)
                .padding(20)
            EnumPicker<TypeCompteAnalytique>(TypeCompteAnalytique.all, $data, true)
                .frame(width:250, height:150)
        }
    }
}
#Preview("analytique") {
    AnaPreview()
}
