//
//  CommuneView.swift
//  Putex
//
//  Created by Herve Crespel on 09/11/2024.
//
import SwiftUI

struct CommuneView: View {
    @Binding var commune: Commune
    @Binding var quartier : Quartier
    @Binding var parcelle : Parcelle
    
    var body:some View {
        if commune.quartiers.count > 0 {
            GroupBox(commune.nom) {
                HStack {
                    VStack {
                        // TextField("",text:$commune.nom)
                        Text("quartiers")
                        ForEach($commune.quartiers){
                            item in
                            Button(action:{quartier = item.wrappedValue})
                            {
                                Text(item.wrappedValue.nom).frame(width:100)
                            }
                        }
                    }
                    
                    QuartierView(quartier:$quartier, parcelle:$parcelle)
                }.frame(alignment:.leading)
            }
        } else {
            if commune.nom != "" {
                Text("aucun quartier défini").padding(20)
            }
        }
    }
}

struct QuartierView : View {
    @Binding var quartier: Quartier
    @Binding var parcelle : Parcelle
    
    var body:some View {
        if quartier.parcelles.count > 0 {
            HStack {
                VStack {
                    Text("parcelles")
                    ForEach($quartier.parcelles){
                        item in
                        Button(action:{parcelle = item.wrappedValue})
                        {
                            Text(item.wrappedValue.nom).frame(width:100)
                        }
                    }
                }
                
                //ParcelleView(parcelle:$selected)
            }.frame(alignment:.leading)
        } else {
            if quartier.nom != "" {
                Text("aucune parcelle définie")
            }
        }
    }
}
