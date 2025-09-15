//
//  CommuneView.swift
//  Putex
//
//  Created by Herve Crespel on 09/11/2024.
//
import SwiftUI

struct CommuneView: View {
    @Binding var lid:LID
    var continent:Continent
    var territoire: Territoire
    var region: Region
    @Binding var commune : Commune
    @Binding var quartier : Quartier
    @Binding var terrain : Terrain
    
    var body:some View {
        if commune.quartiers.count > 0 {
            if quartier.nom == "" {
                HStack(alignment:.center)  {
                    VStack {
                        ForEach($commune.quartiers){
                            item in
                            if item.terrains.count > 0 {
                                Button(action:{
                                    quartier = item.wrappedValue
                                    if item.terrains.count == 1 {
                                        terrain = quartier.terrains[0]
                                        lid = LID([continent.id, territoire.id, region.id, commune.id, item.id, terrain.id])
                                    } else {
                                        terrain = Terrain()
                                        lid = LID([continent.id, territoire.id, region.id, commune.id, item.id])
                                    }
                                })
                                { Text(item.wrappedValue.nom).frame(width:100) }
                            }
                        }
                    }
                    Spacer()
                    Text("Choisir un quartier")
                    Spacer()
                }
                } else {
                    QuartierView(lid:$lid, continent:continent, territoire:territoire, region:region, commune:commune, quartier:$quartier, terrain:$terrain)
                }
            
        } else {
            if commune.nom != "" {
                Text("aucun quartier défini à " + commune.nom).padding(20)
            }
        }
    }
}

