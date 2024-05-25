//
//  SwiftUIView.swift
//
//
//  Created by Herve Crespel on 09/05/2024.
//

import SwiftUI


struct UnitéPicker: View {
    @Binding var selected: Unité?
    var body: some View {
        EnumPicker<Unité>(Unité.allCases, $selected)
    }
}

#Preview {
    UnitéPicker(selected:.constant(.unit))
}
