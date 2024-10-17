//
//  DevisePicker.swift
//  Putex
//
//  Created by Herve Crespel on 14/10/2024.
//

import SwiftUI

let deviset = Deviset()

public struct DevisePicker: View {
    @Binding var selected: String
    @State var edition = false

    public init(_ code:Binding<String>) {
        _selected = code
    }
    
    public var body: some View {

        Button(action:{ edition = true })
        {
            Text(Devise2.all[selected]?.symbol ?? "")
                .frame(width:20)
        }.sheet(isPresented: $edition) {
            IdPicker(deviset.all, $selected, "devise")
                .frame(width:200)
        }
    }
}

struct DevisePreview: View {
    @State var code:String = ""
    
    var body:some View {
        DevisePicker($code)
    }
}

#Preview {
    DevisePreview()
}
