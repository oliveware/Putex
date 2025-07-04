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
    
    @State private var choix = false
    
    func choisir() {
        if commune.quartiers.count == 1 {
            let quart = commune.quartiers[0]
            quartier = quart
            terrain = Terrain()
            lid = LID([continent.id, territoire.id, region.id, commune.id, quart.id])
        } else {
            choix = true
        }
    }
    
    var body:some View {
        if commune.quartiers.count > 0 {
                HStack(alignment:.top)  {
                    VStack {
                        // TextField("",text:$commune.nom)
                        Text("quartier")
                        if !choix {
                            HStack {
                                Text(quartier.nom).frame(width:150).padding(3)
                                if commune.quartiers.count > 1 {
                                    Button(action:{ choix = true })
                                    {Image(systemName: "chevron.down") }
                                }
                            }
                        } else {
                            ForEach($commune.quartiers){
                                item in
                                Button(action:{
                                    quartier = item.wrappedValue
                                    terrain = Terrain()
                                    lid = LID([continent.id, territoire.id, region.id, commune.id, item.id])
                                    choix = false
                                })
                                {
                                    Text(item.wrappedValue.nom).frame(width:100)
                                }
                            }
                        }
                    }
                    
                    QuartierView(lid:$lid, continent:continent, territoire:territoire, region:region, commune:commune, quartier:$quartier, terrain:$terrain)
                }.frame(alignment:.leading)
            
        } else {
            if commune.nom != "" {
                Text("aucun quartier défini à " + commune.nom).padding(20)
            }
        }
    }
}

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
