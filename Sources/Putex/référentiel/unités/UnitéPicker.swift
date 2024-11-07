//
//  UnitéPicker.swift
//
//
//  Created by Herve Crespel on 09/05/2024.
//

import SwiftUI

struct UnitéPicker: View {
    @Binding var selected: Unité?
    
    var body: some View {
        EnumPicker<Unité>(Unité.allCases, $selected, true)
            .frame(width:200)
    }
}

struct UnitPreview: View {
    @State var unit:Unité?
    
    var body:some View {
        UnitéPicker(selected:$unit)
    }
}

#Preview {
    UnitPreview()
}
