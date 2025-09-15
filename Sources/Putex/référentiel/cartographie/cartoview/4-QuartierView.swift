//
//  QuartierView.swift
//  Putex
//
//  Created by Herve Crespel on 15/08/2025.
//

import SwiftUI

struct QuartierView : View {
    @Binding var quartier: Quartier
    @State var edition : Bool
    
    init(_ quartier:Binding<Quartier>) {
        _quartier = quartier
        edition = quartier.wrappedValue.nom == ""
    }
    
    var body: some View {
        HStack {
            if edition {
                GroupBox {
                    QuartierEditor(quartier:$quartier)
                }
                Spacer()
                Button(action: { edition = false})
                {Image(systemName: "checkmark")}
                
            } else {
                Text(quartier.nom).frame(width:200, alignment:.leading)
                Spacer()
                Button(action: { edition = true})
                {Image(systemName: "pencil")}
            }
        }
    }
}

struct QuartierEditor : View {
    @Binding var quartier: Quartier
    
    var body: some View {
        HStack(spacing:20) {
            VStack {
                TextField("nom", text:$quartier.nom).frame(width:150)
                Button("ajouter un terrain", action:{quartier.terrains.append(Terrain())})
            }
            GroupBox("terrains") {
               ScrollView{
                   ForEach($quartier.terrains) {
                    item in
                       //Text(item.wrappedValue.nom)
                    TerrainView(item)
                   }.frame(alignment:.leading)
               }//.frame(height:CGFloat(continent.territoires.count * 7))
            }
        }
    }
}

struct QuartierPicker : View {
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


