//
//  RegionView.swift
//  Putex
//
//  Created by Herve Crespel on 08/11/2024.
//
import SwiftUI

struct RegionView: View {
    @Binding var lid:LID
    var continent:Continent
    var territoire: Territoire
    @Binding var region: Region
    @Binding var commune : Commune
    @Binding var quartier : Quartier
    @Binding var terrain : Terrain
    
    @State private var choix = true
    @State private var ajout = false
    
    var body:some View {
        
        NavigationStack {
            VStack(alignment:.leading) {
        
                HStack(alignment:.top)  {
                    VStack(alignment:.leading) {
                        Text("commune")
                        if !choix && !(commune.nom == "") {
                            HStack {
                                Text(commune.nom).frame(width:120)
                                Button(action:{
                                    commune = Commune()
                                    quartier = Quartier()
                                    terrain = Terrain()
                                    choix = true
                                })
                                {Image(systemName: "chevron.down") }
                            }.frame(alignment: .leading)
                        } else {
                            ForEach($region.communes){
                                item in
                                Button(action:{
                                    commune = item.wrappedValue
                                    if item.quartiers.count == 1 {
                                        quartier = commune.quartiers[0]
                                    } else {
                                        quartier = Quartier()
                                    }
                                    terrain = Terrain()
                                    lid = LID([continent.id,territoire.id, region.id, item.id])
                                    choix = false
                                })
                                { Text(item.wrappedValue.nom).frame(width:120) }
                            }
                        }
                    }
                    if $commune.wrappedValue.id == Commune().id {
                        Text("Choisir une commune")
                    } else {
                        CommuneView(lid:$lid, continent:continent, territoire:territoire, region:region, commune:$commune, quartier:$quartier, terrain:$terrain)
                    }
                }.frame(alignment:.leading).padding(20)
                
                HStack (spacing: 20) {
                    GroupBox("LID") {
                        Text(lid.id)
                    }
                    if !terrain.numvoie.isNaN {
                        VStack{
                            GroupBox("Adresse") {
                                Text(terrain.adresse())
                            }
                            if terrain.autrenumvoie != nil {
                                GroupBox("autre adresse") {
                                    Text(terrain.adresse(nil,true))
                                }
                            }
                        }
                    }
                }.padding(20)
                
            }
       }
        
    }
    
    func add() {
        let new = Commune(lid)
        region.communes.append(new)
        commune = new
        ajout = true
    }
}
