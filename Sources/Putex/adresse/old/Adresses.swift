//
//  SwiftUIView.swift
//  
//
//  Created by Herve Crespel on 03/11/2023.
//

import SwiftUI

public struct Adresses: View {
    @State var adresse = uneadresse
    @State var edition = true
    var encode = AddressCodifier(prompt: "adresse codifiée")
    
    @State var index = 0
    
    public var body: some View {
            TabView(selection: $index) {
                AdresseView0($adresse, $edition)
                    .tabItem { Text("libre") }.tag(1)
                encode.tabItem { Text("codifiée") }.tag(2)
            }
            .background(Color.init(red: 0.057, green: 0.169, blue: 0.12, opacity: 1))
    }
}

#Preview {
    Adresses()
}
