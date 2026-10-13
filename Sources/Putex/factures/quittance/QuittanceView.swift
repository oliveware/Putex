//
//  QuittanceView.swift
//  Attribex
//
//  Created by Herve Crespel on 13/10/2026.
//

import SwiftUI

struct QuittanceView: View {
    var quittance: Quittance

    let A4 : CGPoint = CGPoint(x: 210, y: 297)

    var body: some View {
        VStack {
            Text("QUITTANCE DE LOYER").font(.title)
            Text(quittance.moisan).padding(.bottom,20).font(.title2)
            VStack(alignment:.leading) {
                
                HStack (alignment:.bottom) {
                    Text("\(quittance.proprio)\n\(quittance.adresseproprio)")
                    Spacer()
                    Text("à \(quittance.locataires)")
                }.frame(height:100)
                HStack {
                    Spacer()
                    Text(quittance.faitale)
                }.padding(.bottom, 20)
                HStack {
                    VStack {
                        Text("Adresse de la location :")
                        Text("\(quittance.adresselocation)")
                    }.frame(height:100)
                    Spacer()
                }
                
                Text(quittance.body).padding(.bottom,25)
                HStack {
                    VStack(alignment: .leading) {
                        Text("Détail du loyer :").padding(.bottom,5)
                        Text(quittance.loyer).frame(width:250)
                    }.padding(5)
                    
                    Image("signature").padding(20)
                }
            }.padding(.leading,30)
                .padding(.trailing,30)
            Text("Cette quittance annule tous les reçus qui auraient pu être établis précédemment en cas de paiement partiel du montant du présent terme. Elle est à conserver pendant trois ans par le locataire (loi n° 89-462 du 6 juillet 1989 : art. 7-1).").padding(.top,50).font(.caption)
        }.frame(width: A4.x*2.5, height:A4.y*2.5)
            .padding(20)
    }
}

struct QuittancePreview: View {
    @State var quittance = Quittance(
         (occupation: "noms locataires", adresse: "adresse", loyer:"loyer"),
         11, 2022,
         (short:"HC", adresse:"adresse", commune:"ailleurs"),
         JMA(3,12,22)   //"loyer", 50000))
    )
    
    var body: some View {
        QuittanceView( quittance:quittance )
    }
}


#Preview {
    QuittancePreview()
 }
 
