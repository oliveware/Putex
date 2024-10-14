//
//  DevisePicker.swift
//  Putex
//
//  Created by Herve Crespel on 14/10/2024.
//

import SwiftUI

let deviset = Deviset()

public struct DevisePicker: View {
    @Binding var selected: String?
    
    public init(_ code:Binding<String?>) {
        _selected = code
    }
    
    public var body: some View {
        CodePicker(Coderef.all["devises"] ?? Coderef.empty, $selected, "", "€")
            .frame(width:200)
    }
}

struct DevisePreview: View {
    @State var code:String?
    
    var body:some View {
        DevisePicker($code)
    }
}

#Preview {
    DevisePreview()
}
