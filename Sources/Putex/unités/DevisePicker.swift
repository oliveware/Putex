//
//  DevisePicker.swift
//  Putex
//
//  Created by Herve Crespel on 14/10/2024.
//

import SwiftUI


struct DevisePicker: View {
    @Binding var selected: Devise.Kind?
    
    var body: some View {
        EnumPicker(Devise.Kind.all, $selected, true)
            .frame(width:180)
    }
}

struct DevisePreview: View {
    @State var unit:Devise.Kind?
    
    var body:some View {
        DevisePicker(selected:$unit)
    }
}

#Preview {
    DevisePreview()
}
