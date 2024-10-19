//
//  DevisePicker.swift
//  Putex
//
//  Created by Herve Crespel on 14/10/2024.
//

import SwiftUI

let deviset = Deviset()

public struct DevisePicker: View {
    @Binding var symbol: String
    @State var edition = false
    @State var devise: Devise

    public init(_ symbol:Binding<String>) {
        _symbol = symbol
        devise = Devise[symbol.wrappedValue]
    }
    
    public var body: some View {

        Button(action:{ edition = true })
        {
            Text(symbol)
                .frame(width:20)
        }.sheet(isPresented: $edition) {
            ItemPicker(deviset.all, $devise, done)
                .frame(width:200)
        }
    }
    
    func done() {
        symbol = devise.symbol ?? ""
        edition = false
    }
}

struct DevisePreview: View {
    @State var symbol = "€"
    
    var body:some View {
        DevisePicker($symbol)
            .frame(width:200, height:100)
    }
}

#Preview {
    DevisePreview()
}
