//
//  CommuneView.swift
//  Putex
//
//  Created by Herve Crespel on 09/11/2024.
//
import SwiftUI

struct CommuneView : View {
    @Binding var commune : Commune
    @State var edition : Bool
    
    init(_ commune:Binding<Commune>) {
        _commune = commune
        edition = commune.wrappedValue.nom == ""
    }
    
    var body: some View {
        HStack {
                Text(commune.nom).frame(width:200, alignment:.leading)

                Spacer()
                Button(action: { edition = true})
                {Image(systemName: "pencil")}
                .sheet(isPresented: $edition) {
                    CommuneEditor(commune: $commune)
            }
        }
    }
}

struct CommuneEditor: View {
    @Binding var commune: Commune
    var body: some View {
        HStack(spacing:20) {
            VStack(alignment:.leading) {
                TextField("nom", text:$commune.nom).frame(width:150)
                
                Button("ajouter un quartier", action:{commune.quartiers.append(Quartier())})
                OptionalView("tutelle", $commune.tutelle)
            }
            if commune.quartiers.count > 0 {
                GroupBox("quartiers") {
                    ScrollView{
                        ForEach($commune.quartiers) {
                            item in
                            QuartierView(item)
                        }.frame(alignment:.leading)
                    }
                }
            }
        }
    }
}

struct CommunePicker: View {
    @Binding var lid:LID
    var continent:Continent
    var territoire: Territoire
    var region: Region
    @Binding var commune : Commune
    @Binding var quartier : Quartier
    @Binding var terrain : Terrain
    
    var body:some View {
        if commune.quartiers.count > 0 {
            if quartier.nom == "" {
                HStack(alignment:.center)  {
                    VStack {
                        ForEach($commune.quartiers){
                            item in
                            if item.terrains.count > 0 {
                                Button(action:{
                                    quartier = item.wrappedValue
                                    if item.terrains.count == 1 {
                                        terrain = quartier.terrains[0]
                                        lid = LID([continent.id, territoire.id, region.id, commune.id, item.id, terrain.id])
                                    } else {
                                        terrain = Terrain()
                                        lid = LID([continent.id, territoire.id, region.id, commune.id, item.id])
                                    }
                                })
                                { Text(item.wrappedValue.nom).frame(width:100) }
                            }
                        }
                    }
                    Spacer()
                    Text("Choisir un quartier")
                    Spacer()
                }
                } else {
                    QuartierPicker(lid:$lid, continent:continent, territoire:territoire, region:region, commune:commune, quartier:$quartier, terrain:$terrain)
                }
            
        } else {
            if commune.nom != "" {
                Text("aucun quartier défini à " + commune.nom).padding(20)
            }
        }
    }
}

struct CommunePreview : View {
    @State var commune = Commune()
    
    var body:some View {
        CommuneEditor(commune: $commune)
            .frame(width:900, height:200)
    }
}

#Preview ("editor"){
    CommunePreview().padding()
}

