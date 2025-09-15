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

    @State var ajout = false
    
    var body:some View {
        VStack(alignment:.leading) {
            
            if commune.nom == "" {
                HStack(alignment:.center)  {
                    VStack(alignment:.leading) {
                        ForEach($region.communes){
                            item in
                            if item.quartiers.count > 0 {
                                Button(action:{
                                    if item.quartiers.count == 1 {
                                        quartier = item.wrappedValue.quartiers[0]
                                        lid = LID([continent.id,territoire.id, region.id, item.id, quartier.id])
                                    } else {
                                        quartier = Quartier()
                                        lid = LID([continent.id,territoire.id, region.id, item.id])
                                    }
                                    terrain = Terrain()
                                    commune = item.wrappedValue
                                })
                                { Text(item.wrappedValue.nom).frame(width:120) }
                            }
                        }
                    }
                    Spacer()
                    VStack{
                        Text("Choisir une commune").padding(.bottom,10)
                        if ajout {
                            Button("ajouter une commune", action:{
                                ajout = true
                                region.communes = [Commune()] + $region.wrappedValue.communes
                                commune = region.communes[0]
                            })
                        }
                    }
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
