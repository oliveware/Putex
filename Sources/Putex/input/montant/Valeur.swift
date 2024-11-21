//
//  Valeur.swift
//  Putex
//
//  Created by Herve Crespel on 21/11/2024.
//

struct Valeur : Codable {
    var acquisition = Estimation()
    var estimation = Estimation()
    var revente: Estimation?
}

import SwiftUI
struct ValeurShow: View {
    var valeur:Valeur
    
    var body: some View  {
        VStack {
            if valeur.acquisition.montant == Montant() {
                Text("valeur à définir")
            } else {
                Text("acquisition : " + valeur.acquisition.entexte)
                if valeur.estimation.montant == Montant() {
                    Text("estimation à établir")
                } else {
                    Text("estimation : " + valeur.estimation.entexte)
                    if valeur.revente != nil {
                        Text("revente : " + valeur.revente!.entexte)
                    }
                }
            }
        }
    }
}
struct ValeurView: View {
    @Binding var valeur:Valeur
    @State var edition = false
    
    var body: some View  {
        Form {
            VStack {
                EstimationView($valeur.acquisition, "acquisition")
                if !(valeur.acquisition.montant == Montant()) {
                    EstimationView($valeur.estimation, "estimation")
                    if let optional : Binding<Estimation> = Binding($valeur.revente) {
                        EstimationView(optional, "revente")
                    } else {
                        Button(action:{valeur.revente = Estimation()})
                        {Text("revendre")}
                    }
                }
            }
        }
        
    }
}


struct ValeurPreview: View {
    @State var valeur = Valeur()
    
    var body: some View {
        ValeurView(valeur:$valeur).padding(20).frame(width:600)
    }
}

#Preview {
    ValeurPreview()
}
