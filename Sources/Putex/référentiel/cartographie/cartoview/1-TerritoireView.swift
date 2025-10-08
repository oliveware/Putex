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


