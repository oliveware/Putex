//
//  DevisePicker.swift
//  Putex
//
//  Created by Herve Crespel on 14/10/2024.
//

import SwiftUI

let deviset = Deviset()

public struct DevisePicker: View {
    @Binding var selected: Devise
    @State var edition = false

    public init(_ devise:Binding<Devise>) {
        _selected = devise
    }
    
    public var body: some View {

        Button(action:{ edition = true })
        {
            Text(selected.symbol ?? "?")
                .frame(width:20)
        }.sheet(isPresented: $edition) {
            ItemPicker(deviset.all, $selected)
                .frame(width:200)
        }
    }
}

struct DevisePreview: View {
    @State var devise = Devise.unknown
    
    var body:some View {
        DevisePicker($devise)
            .frame(width:200, height:100)
    }
}

#Preview {
    DevisePreview()
}
