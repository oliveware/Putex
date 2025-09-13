//
//  TerritoireView2.swift
//  Putex
//
//  Created by Herve Crespel on 12/09/2025.

import SwiftUI

struct TerritoireView : View {
    @Binding var lid:LID
    @Binding var continent: Continent
    @Binding var territoire: Territoire
    @State var region = Region()
    @State var commune = Commune()
    @State var quartier = Quartier()
    @State var terrain = Terrain()
    
    var barre:some View {
        HStack {
            if territoire.nom != "" {
                    Button(action:{
                        territoire = Territoire()
                        region = Region()
                        commune = Commune()
                        quartier = Quartier()
                        terrain = Terrain() })
                    {Text(territoire.nom)}
                if region.nom != "" {
                    if territoire.regions.count > 1 {
                        Button(action:{
                            region = Region()
                            commune = Commune()
                            quartier = Quartier()
                            terrain = Terrain() })
                        {Text(region.nom)}
                    } else {
                        Text(region.nom)
                    }
                    if commune.nom != "" {
                        if region.communes.count > 1 {
                            Button(action:{
                                commune = Commune()
                                quartier = Quartier()
                                terrain = Terrain()})
                            {Text(commune.nom)}
                        } else {
                            Text(commune.nom)
                        }
                        if quartier.nom != "" {
                            if commune.quartiers.count > 1 {
                                Button(action:{
                                    quartier = Quartier()
                                    terrain = Terrain()})
                                {Text(quartier.nom)}
                            } else {
                                Text(quartier.nom)
                            }
                            if !terrain.isNaN {
                                if quartier.terrains.count > 1 {
                                    Button(action:{
                                        terrain = Terrain()})
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
        if territoire.nom == "" {
            ContinentView(lid: $lid, continent: $continent, territoire: $territoire)
        } else {
            VStack {
                barre
                Spacer()
                if region.id == Region().id {
                    HStack {
                        VStack(alignment:.leading) {
                            ForEach($territoire.regions) { item in
                                if item.wrappedValue.avecterrains {
                                    Button(action:{region = item.wrappedValue})
                                    {Text(item.wrappedValue.nom).frame(width:150, alignment: .center)}
                                    
                                }
                            }
                            //Spacer()
                        }
                        Spacer()
                        Text("Choisir une région")
                        Spacer()
                    }
                } else {
                    RegionView(lid:$lid,  continent:continent, territoire:territoire, region:$region, commune:$commune, quartier:$quartier, terrain:$terrain )
                        .onChange(of:region.id) {
                            commune = Commune()
                            quartier = Quartier()
                            terrain = Terrain()
                            lid = LID([continent.id, territoire.id, region.id])
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
}

struct TerritoirePreview : View {
    @State var continent = Continents.Europe
    @State var territoire = Deutschland ?? Territoire(FR)
    @State var lid = LID([1,1])
    
    var body:some View {
        TerritoireView(lid:$lid, continent:$continent, territoire: $territoire)
            .frame(width:600,height:300)
    }
}

#Preview {
    TerritoirePreview().padding()
}
