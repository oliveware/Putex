//
//  BatimentView.swift
//  Putex
//
//  Created by Herve Crespel on 05/11/2024.
//
import SwiftUI

struct BatimentView: View {
    @Binding var batiment:Batiment
    
    var body: some View {
        Form {
            TextField("nom", text:$batiment.nom)
            GroupBox ("adresse"){
                TextField("voie      ", text:$batiment.adresse.voie)
                HStack {
                    TextField("numéro", text:$batiment.adresse.numéro)
                        .frame(width:100)
                    TextField("code postal", text:$batiment.codepostal)
                }
            }
        }.frame(width:300)
        .padding(10)
    }
}

struct BatimentPreview: View {
    @State var batiment = Batiment("maison")
    
    var body: some View {
        BatimentView(batiment:$batiment)
    }
}

#Preview {
    BatimentPreview()
}
