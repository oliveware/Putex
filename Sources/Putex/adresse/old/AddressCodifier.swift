//
//  Geoaddress.swift
//  Xware
//
//  Created by Herve Crespel on 17/01/2021.
//

import SwiftUI
import Putex

public struct AddressCodifier: View {
    // @Binding var adresse:GeoAddress
    var prompt = "adresse codifiée"
    @State var numero:String = ""
    @State var codepostal:String = ""
    
    let voie    : Choice
    let nomvoie : Choice
    let ville   : Choice
    let pays    : Choice
    let region  : Choice
    
    public init(prompt:String = "") {
        self.prompt = prompt
        voie = Choice(prompt: "voie", width:120, choix:["allée","avenue","boulevard","rue"])
        nomvoie = Choice(prompt: "nom voie",width:170, choix:["du Ternois","de Lille","de la Tourterelle","des gramma"])
        ville = Choice(prompt: "ville", width:180, choix:["Lille","Villeneuve d'Ascq"])
        pays = Choice(prompt: "pays", width:180, choix:["France","Deutschland","England"])
        region = Choice(prompt: "région", width:180, choix:["Hauts-de-France","Normandie","Ile-de-France","USA"])
        
    }
    
     
    public var body: some View {
        
        GroupBox(prompt) {
            VStack {
                HStack {
                    TextField("numéro",text:$numero)
                        .frame(width: 50, height: 60, alignment: .center)
                    voie.frame(width: 120, height: 60, alignment: .center)
                    nomvoie.frame(width: 200, height: 60, alignment: .center)
                }
                HStack {
                    TextField( "code postal",text: $codepostal).frame(width: 80, height: 60, alignment: .center)
                    ville.frame(width: 220, height: 60, alignment: .center)
                }
                HStack {
                    pays.frame(width: 180, height: 60, alignment: .center)
                    region.frame(width: 200, height: 60, alignment: .center)
                }
            }.padding(5)
            .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.black, lineWidth: 3))
        }
        .padding(10)
        .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray, lineWidth: 1))
        .padding(10)
    }

}


struct Geoaddress_Previews: PreviewProvider {
    static var previews: some View {
        AddressCodifier(prompt:"adresse")
    }
}
