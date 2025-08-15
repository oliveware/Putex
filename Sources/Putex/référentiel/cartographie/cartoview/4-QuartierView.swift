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
    @Binding var terrain : Terrain
    
    var body:some View {
        if quartier.terrains.count > 0 {
            HStack {
                VStack {
                    Text("terrains")
                    ForEach($quartier.terrains){
                        item in
                        Button(action:{
                            terrain = item.wrappedValue
                            lid = LID([continent.id, territoire.id, region.id, commune.id,
                                       quartier.id, item.id])
                            terrain.lid = lid
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


