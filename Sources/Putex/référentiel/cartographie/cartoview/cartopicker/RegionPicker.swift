//
//  RegionPicker.swift
//  Putex
//
//  Created by Herve Crespel on 07/10/2025.
//
import SwiftUI


struct RegionPicker : View {
    @Binding var lid:LID
    @Binding var continent: Continent
    @Binding var territoire: Territoire
    @State var region = Region()
    @State var commune = Commune()
    @State var quartier = Quartier()
    @State var terrain = Terrain()
    
    @State var edition = true
    
    var barre:some View {
        HStack {
            if territoire.nom != "" {
                Button(action:{
                    territoire = Territoire()
                    region = Region()
                    commune = Commune()
                    quartier = Quartier()
                    terrain = Terrain()
                    lid = LID([continent.id])
                })
                    {Text(territoire.nom)}
                if region.nom != "" {
                    if territoire.regions.count > 1 {
                        Button(action:{
                            region = Region()
                            commune = Commune()
                            quartier = Quartier()
                            terrain = Terrain()
                            lid = LID([continent.id, territoire.id])
                        })
                        {Text(region.nom)}
                    } else {
                        Text(region.nom)
                    }
                    if commune.nom != "" {
                        if region.communes.count > 1 {
                            Button(action:{
                                commune = Commune()
                                quartier = Quartier()
                                terrain = Terrain()
                                lid = LID([continent.id, territoire.id, region.id])
                            })
                            {Text(commune.nom)}
                        } else {
                            Text(commune.nom)
                        }
                        if quartier.nom != "" {
                            if commune.quartiers.count > 1 {
                                Button(action:{
                                    quartier = Quartier()
                                    terrain = Terrain()
                                    lid = LID([continent.id, territoire.id, region.id, commune.id])
                                })
                                {Text(quartier.nom)}
                            } else {
                                Text(quartier.nom)
                            }
                            if !terrain.isNaN {
                                if quartier.terrains.count > 1 {
                                    Button(action:{
                                        terrain = Terrain()
                                        lid = LID([continent.id, territoire.id, region.id, commune.id,quartier.id])
                                    })
                                    {Text(terrain.label)}
                                } else {
                                    Text(terrain.label)
                                }
                            }
                        }
                    }
                }
            }
            Spacer()
            
        }
    }

    var body:some View {
        VStack {
            if territoire.id == 0 {
                ContinentPicker(lid: $lid, continent: $continent, territoire: $territoire)
            } else {
                
                barre
                Spacer()
                if region.id == Region().id {
                    HStack {
                        ScrollView {
                            VStack(alignment:.leading) {
                                ForEach($territoire.regions) { item in
                                    if edition || item.wrappedValue.avecterrains {
                                        Button(action:{
                                            region = item.wrappedValue
                                            lid = LID([continent.id,territoire.id, region.id])
                                            commune = Commune()
                                            quartier = Quartier()
                                            terrain = Terrain()
                                        })
                                        {Text(item.wrappedValue.nom).frame(width:150, alignment: .center)}
                                    }
                                }
                            }
                        }
                        .frame(height:CGFloat(territoire.regions.count * (edition ? 20 : 10)))
                        Spacer()
                        Text("Choisir une région")
                        Spacer()
                    }
                } else {
                    CommunePicker(lid:$lid,  continent:continent, territoire:territoire, region:$region, commune:$commune, quartier:$quartier, terrain:$terrain , ajout:edition)
                }
            }
            Spacer()
            
            HStack {
                Spacer()
                Text(lid.id)
            }
            
            
            //  .onDelete(perform: deleteItems)
        }.frame(alignment: .leading)
    }
}

struct RegionPickerPreview : View {
    @State var continent = World.Europe
    @State var territoire = France
    @State var lid = LID([1,1])
    
    var edition = true
    
    var body:some View {
        VStack {
            RegionPicker(lid:$lid, continent:$continent, territoire: $territoire, edition:edition)
                .frame(width:600,height:400)
            Text(lid.id)
        }
    }
}

#Preview("éditable") {
    RegionPickerPreview().padding()
}

#Preview ("non éditable") {
    RegionPickerPreview(edition:false).padding()
}
              
