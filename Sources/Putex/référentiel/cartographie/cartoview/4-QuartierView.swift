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




