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
    var style: (any PickerStyle)?
    @Binding var selected: T?
    
    public init(_ cases:[T], _ selected:Binding<T?>, _ vorh:Bool = false, _ prompt:Bool = false, _ style:(any PickerStyle)? = nil) {
        self.cases = cases
        self._selected = selected
        self.prompt = prompt
        self.style = style
        vertical = vorh
    }
    public init(_ cases:[T], _ selected:Binding<T>, _ vorh:Bool = false, _ prompt:Bool = false, _ style:(any PickerStyle)? = nil) {
        self.cases = cases
        self._selected = Binding(selected)
        self.prompt = prompt
        self.style = style
        vertical = vorh
    }
    
    var picker: some View {
        Picker("", selection:$selected) {
            if selected == nil {
                Text("choisir " + T.selector).tag(nil as T?)
            }
            ForEach (cases) { item in
                Text(item.label).tag(item as T?)
            }
        }
    }
    var pickersegmented: some View {
        Picker("", selection:$selected) {
            
            ForEach (cases) { item in
                Text(item.label).tag(item as T?)
            }
            
        }.pickerStyle(.segmented)
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
                pickersegmented
            }
        } else {
            picker
        }
    }
}

struct EnumPreview<T:Enumerable>: View  {
    @State var data : T?
    var vertical = true
    var body: some View {
        VStack {
            Text("le choix retourne un cas")
                .font(.title2)
                .padding(20)
            EnumPicker<T>(T.allCases as! [T], $data, vertical, true)
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
    EnumPreview<Webdomain>(vertical:false)
}
#Preview("unité") {
    UnitPreview()
}
