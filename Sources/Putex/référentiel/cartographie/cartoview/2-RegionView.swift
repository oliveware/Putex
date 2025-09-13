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
    
   // @State private var choix = true
    @State private var ajout = false
    
    var body:some View {
        VStack(alignment:.leading) {
            if commune.id == Commune().id {
                HStack(alignment:.center)  {
                    
                    VStack(alignment:.leading) {
                        ForEach($region.communes){
                            item in
                            if item.quartiers.count > 0 {
                                Button(action:{
                                    commune = item.wrappedValue
                                    if item.quartiers.count == 1 {
                                        quartier = commune.quartiers[0]
                                    } else {
                                        quartier = Quartier()
                                    }
                                    terrain = Terrain()
                                    lid = LID([continent.id,territoire.id, region.id, item.id])
                                    //choix = false
                                })
                                { Text(item.wrappedValue.nom).frame(width:120) }
                            }
                        }
                    }
                    Spacer()
                    Text("Choisir une commune").padding(.bottom,10)
                    Spacer()
                }
            } else {
                CommuneView(lid:$lid, continent:continent, territoire:territoire, region:region, commune:$commune, quartier:$quartier, terrain:$terrain)
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
