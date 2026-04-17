//
//  SwiftUIView.swift
//  
//
//  Created by Herve Crespel on 24/04/2024.
//

import SwiftUI

public protocol Enumerable: CaseIterable, Hashable, Identifiable {
    static var selector: String {get}
    var label: String {get}
}

public struct EnumPicker<T:Enumerable>: View {
    let cases: [T]
    var prompt: Bool = false
    var vertical = false
    @Binding var selected: T?
    
    public init(_ cases:[T], _ selected:Binding<T?>, _ vorh:Bool = false, _ prompt:Bool = false) {
        self.cases = cases
        self._selected = selected
        vertical = vorh
    }
    public init(_ cases:[T], _ selected:Binding<T>, _ vorh:Bool = false, _ prompt:Bool = false) {
        self.cases = cases
        self._selected = Binding(selected)
        vertical = vorh
    }
    
    var picker: some View {
        //    Text("Selected: \(selected?.label ?? "None")") // For debugging
        Picker("", selection:$selected) {
            if selected == nil {
                Text("choisir " + T.selector).tag(nil as T?)
            }
            ForEach (cases) { item in
                Text(item.label).tag(item as T?)
            }
        }//.pickerStyle(.radioGroup)
    }
    
    public var body: some View {
        if prompt {
            if vertical {
                VStack(alignment:.leading) {
                    Text(T.selector).font(.caption)
                        .padding(.leading,10)
                    picker
                }
            } else {
               picker
            }
        } else {
            picker
        }
    }
}

struct EnumPreview<T:Enumerable>: View  {
    @State var data : T?
    var body: some View {
        VStack {
            Text("le choix retourne un cas")
                .font(.title2)
                .padding(20)
            EnumPicker<T>(T.allCases as! [T], $data, true)
                .frame(width:250, height:150)
        }
    }
}

#Preview("bancaire") {
    EnumPreview<TypeCompteBancaire>()
}
#Preview("analytique") {
    EnumPreview<TypeCompteAnalytique>()
}
#Preview("domain") {
    EnumPreview<Webdomain>()
}
#Preview("unité") {
    UnitPreview()
}
