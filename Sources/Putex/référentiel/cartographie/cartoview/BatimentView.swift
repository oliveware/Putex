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
            VStack {
                TextField("nom     ", text:$batiment.nom).padding(.bottom,10)
                GroupBox ("adresse"){
                    TextField("voie      ", text:$batiment.numvoie.voie)
                    HStack {
                        TextField("numéro", text:$batiment.numvoie.num)
                            .frame(width:100)
                        TextField("code postal", text:$batiment.codepostal)
                    }
                }
                AltNumVoieEdit(numvoie: $batiment.alternumvoie).padding(.top,10)
                
            }.frame(alignment: .leading)
        }
        .padding(10)
    }
}

struct AltNumVoieEdit: View {
    @Binding var numvoie:Batiment.NumVoie?
    
    var body:some View {
        if let optional: Binding<Batiment.NumVoie> = Binding($numvoie) {
            GroupBox ("autre adresse"){
                TextField("voie ", text:optional.voie)
                TextField("numéro", text:optional.num)
                    .frame(width:100)
            }.frame(alignment: .leading)
        } else {
            Button("autre adresse") { numvoie = Batiment.NumVoie(LID.NA) }
        }
    }
}

struct BatimentPreview: View {
    @State var batiment = Batiment("maison",LID.NA)
    
    var body: some View {
        BatimentView(batiment:$batiment)
            .frame(width:300, height: 200)
    }
}

#Preview {
    BatimentPreview()
}
