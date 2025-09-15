//
//  TerritoireView2.swift
//  Putex
//
//  Created by Herve Crespel on 12/09/2025.

import SwiftUI

struct TerritoireView : View {
    @Binding var territoire : Territoire
    @State var edition : Bool
    
    init(_ territoire:Binding<Territoire>) {
        _territoire = territoire
        edition = territoire.wrappedValue.nom == ""
    }
    var body: some View {
        if edition {
            HStack {
                TerritoireEditor(territoire:$territoire)
                Spacer()
                Button(action: { edition = false})
                {Image(systemName: "checkmark")}
            }
        } else {
            HStack {
                Text(territoire.nom)
                Spacer()
                Button(action: { edition = true})
                {Image(systemName: "pencil")}
            }
        }
    }
}

struct TerritoireEditor : View {
    @Binding var territoire : Territoire
    var body: some View {
        HStack(spacing:20) {
            VStack {
                TextField("nom", text:$territoire.nom).frame(width:100)
                Button("ajouter une région", action:{territoire.regions.append(Region())})
            }
            GroupBox("régions") {
               ScrollView{
                   ForEach($territoire.regions) {
                    item in
                       //Text(item.wrappedValue.nom)
                    RegionView(item)
                }.frame(alignment:.leading)
               }//.frame(height:CGFloat(continent.territoires.count * 7))
            }
        }
    }
}

struct TerritoirePicker : View {
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
            ContinentPicker(lid: $lid, continent: $continent, territoire: $territoire)
        } else {
            VStack {
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
                    RegionPicker(lid:$lid,  continent:continent, territoire:territoire, region:$region, commune:$commune, quartier:$quartier, terrain:$terrain , ajout:edition)
                }
                        
                
                Spacer()
                
                HStack {
                    Spacer()
                    Text(lid.id)
                }
                //  .onDelete(perform: deleteItems)
            }.frame(alignment: .leading)
            .onChange(of:region.id) {
                commune = Commune()
                quartier = Quartier()
                terrain = Terrain()
                lid = LID([continent.id, territoire.id, region.id])
            }
        }
    }
}

struct TerritoirePreview : View {
    @State var continent = World.Europe
    @State var territoire = Deutschland ?? Territoire(FR)
    @State var lid = LID([1,1])
    
    var edition = true
    
    var body:some View {
        TerritoirePicker(lid:$lid, continent:$continent, territoire: $territoire, edition:edition)
            .frame(width:600,height:300)
    }
}

#Preview("éditable") {
    TerritoirePreview().padding()
}

#Preview ("non éditable") {
    TerritoirePreview(edition:false).padding()
}
