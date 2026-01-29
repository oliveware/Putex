//
//  SwiftUIView.swift
//  
//
//  Created by Herve Crespel on 03/11/2023.
//

import SwiftUI

let numvoie = NumVoie("67", "rue du 14 juillet","59113")

public struct AdresseCompare: View {
    @State var nv = numvoie
    @State var adresse = Adresse(numvoie, "Seclin")
    @State var edition = true
    var encode = AddressCodifier(prompt: "adresse codifiée")
    
    @State var index = 0
    
    var compare: some View {
        HStack (alignment: .top){
            GroupBox("full") {
                AdresseFullview($adresse, $edition)
            }
            GroupBox("min") {
                NumVoieView(numvoie: $nv)
            }
        }
    }
    
    public var body: some View {
            TabView(selection: $index) {
                compare
                    .tabItem { Text("compare") }.tag(1)
                encode
                    .tabItem { Text("codifiée") }.tag(2)
            }
            .background(Color.init(red: 0.057, green: 0.139, blue: 0.112, opacity: 1))
    }
}

#Preview {
    AdresseCompare()
}
