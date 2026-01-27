//
//  ContextEditor.swift
//  Locations
//
//  Created by Herve Crespel on 02/05/2023.
//

import SwiftUI
//import CoreLocation

public struct AdresseView0: View {
    @Binding var adresse: Adresse
    var prompt = "adresse postale"
    @Binding var edition: Bool
    var autovalide = false
    
    public init(_ adresse: Binding<Adresse>,_ edition:Binding<Bool>,_ prompt: String = "adresse postale") {
        _adresse = adresse
        self.prompt = prompt
        _edition = edition
    }
    
    public var body: some View {
        GroupBox(prompt) {
            VStack (spacing:20) {
                if edition == true {
                    Form {
                        TextField(text: $adresse.numero, prompt: Text("")){Text("numéro")} .frame(maxWidth: 100)
                        
                        TextField(text: $adresse.voie, prompt: Text("")) {Text("voie")}
                        
                        
                        TextField(text: $adresse.codepostal, prompt: Text("")) {
                            Text("code postal")
                        }
                        TextField(text: $adresse.commune, prompt: Text("")) {
                            Text("commune")
                        }
                    }.frame(maxWidth: 250)
                } else {
                    Text(adresse.astring)
                        .multilineTextAlignment(.center)
                }
                if autovalide {
                    if edition == true {
                        Button("valider", action: {edition = false})
                            .disabled(adresse.isNaN)
                    } else {
                        Button("modifier",action:{edition = true})
                    }
                }
            }
        }.frame(minWidth: 300, minHeight: 150)
        .padding(.bottom,5)
    }
}

struct AdresseView_Previews: PreviewProvider {
    static var previews: some View {
        AdresseView0(.constant(uneadresse), .constant(true))
    }
}
