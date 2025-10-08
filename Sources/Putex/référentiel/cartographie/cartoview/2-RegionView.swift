//
//  RegionView.swift
//  Putex
//
//  Created by Herve Crespel on 08/11/2024.
//
import SwiftUI

struct RegionView: View {
    @Binding var region: Region
    @State var edition : Bool
    
    init(_ region:Binding<Region>) {
        _region = region
        edition = region.wrappedValue.nom == ""
    }
    
    var body:some View {
        
        if edition {
            GroupBox {
                HStack {
                    RegionEditor(region:$region)
                    Spacer()
                    Button(action: { edition = false})
                    {Image(systemName: "checkmark")}
                }
            }
        } else {
            HStack {
                Text(region.nom).frame(width:200, alignment:.leading)
                if let km2 = region.km2 {
                    Text(String(km2) + " km2")
                }
                Spacer()
                Button(action: { edition = true})
                {Image(systemName: "pencil")}
            }
        }
        
    }
}

struct RegionEditor: View {
    @Binding var region: Region
    var body: some View {
        HStack(spacing:20) {
            VStack(alignment:.leading) {
                TextField("nom", text:$region.nom).frame(width:150)
                HStack{
                    TextField("km2", value:$region.km2, format : .number).frame(width:80, alignment:.trailing)
                    Text("km2")
                }.frame(alignment:.leading)
                Button("ajouter une commune", action:{region.communes.append(Commune())})
            }
            GroupBox("communes") {
               ScrollView{
                   ForEach($region.communes) {
                    item in
                       //Text(item.wrappedValue.nom)
                    CommuneView(item)
                   }.frame(alignment:.leading)
               }//.frame(height:CGFloat(continent.territoires.count * 7))
            }
        }
    }
}


