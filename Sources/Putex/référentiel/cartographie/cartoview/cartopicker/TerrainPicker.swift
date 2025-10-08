//
//  TerrainPicker.swift
//  Putex
//
//  Created by Herve Crespel on 07/10/2025.
//
import SwiftUI

struct TerrainPicker : View {
    @Binding var lid:LID
    var continent:Continent
    var territoire: Territoire
    var region: Region
    var commune : Commune
    @Binding var quartier: Quartier
    @Binding var terrain : Terrain
    
    var body:some View {
        if quartier.terrains.count > 0 {
            if terrain.isNaN {
                HStack {
                    VStack {
                        ForEach($quartier.terrains){
                            item in
                            Button(action:{
                                terrain = item.wrappedValue
                                lid = LID([continent.id, territoire.id, region.id, commune.id,
                                           quartier.id, item.id])
                                terrain.lid = lid
                            })
                            {
                                Text(item.wrappedValue.label).frame(width:200)
                            }
                        }
                    }
                    Spacer()
                    Text("Choisir un terrain")
                    Spacer()
                    
                    //ParcelleView(parcelle:$selected)
                }.frame(alignment:.leading)
            } else {
                TerrainView($terrain )
            }
        } else {
            if quartier.nom != "" {
                Text("aucun terrain défini dans " + quartier.nom)
            }
        }
    }
}
