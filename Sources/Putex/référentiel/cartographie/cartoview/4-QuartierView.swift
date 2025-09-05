//
//  QuartierView.swift
//  Putex
//
//  Created by Herve Crespel on 15/08/2025.
//

import SwiftUI

struct QuartierView : View {
    @Binding var lid:LID
    var continent:Continent
    var territoire: Territoire
    var region: Region
    var commune : Commune
    @Binding var quartier: Quartier
    @Binding var parcelle : Parcelle
    
    var body:some View {
        if quartier.parcelles.count > 0 {
            HStack {
                VStack {
                    Text("terrains")
                    ForEach($quartier.parcelles){
                        item in
                        Button(action:{
                            parcelle = item.wrappedValue
                            lid = LID([continent.id, territoire.id, region.id, commune.id,
                                       quartier.id, item.id])
                            parcelle.lid = lid
                        })
                        {
                            Text(item.wrappedValue.label).frame(width:100)
                        }
                    }
                }
                
                //ParcelleView(parcelle:$selected)
            }.frame(alignment:.leading)
        } else {
            if quartier.nom != "" {
                Text("aucun terrain défini dans " + quartier.nom)
            }
        }
    }
}


