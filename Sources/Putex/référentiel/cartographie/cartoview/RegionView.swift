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
    
    
    var body:some View {
        
        NavigationStack{
            VStack {
                HStack (spacing: 20) {
                    GroupBox("LID") {
                        Text(lid.id)
                    }
                    if terrain.adresses[0] != " \n" {
                        HStack{
                            GroupBox("Adresse") {
                                Text(terrain.adresses[0])
                            }
                            if terrain.adresses[1] != "" {
                                GroupBox("autre adresse") {
                                    Text(terrain.adresses[1])
                                }
                            }
                        }
                    }
                }
                Spacer()
                HStack {
                    VStack {
                        Text("communes")
                        
                        ForEach($region.communes){
                            item in
                            Button(action:{
                                commune = item.wrappedValue
                                quartier = Quartier()
                                terrain = Terrain()
                                lid = LID([continent.id,territoire.id, region.id, item.id])
                            })
                            { Text(item.wrappedValue.nom).frame(width:120) }
                        }
                    }
                    
                    CommuneView(lid:$lid, continent:continent, territoire:territoire, region:region, commune:$commune, quartier:$quartier, terrain:$terrain)
                }.frame(alignment:.leading)
                Spacer()
            }
       }
        
    }
    
    func add() {
        region.communes.append(Commune())
        commune = region.communes.last!
    }
}
