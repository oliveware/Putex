//
//  RegionView.swift
//  Putex
//
//  Created by Herve Crespel on 08/11/2024.
//
import SwiftUI

struct RegionView: View {
    @Binding var region:Region
    @Binding var commune : Commune
    @Binding var quartier : Quartier
    @Binding var terrain : Terrain
    var territoire:Territoire
    var lid:LID {
        LID([territoire.id,region.id,commune.id,quartier.id,terrain.id])
    }
    
    var body:some View {
        
        NavigationStack{
     /*  NavigationSplitView {
            List {
                ForEach($region.communes) { item in
                    NavigationLink {
                        CommuneView(commune:item)
                    } label: {
                        Text(item.wrappedValue.nom)
                    }
                }
              //  .onDelete(perform: deleteItems)
            }
#if os(macOS)
            .navigationSplitViewColumnWidth(min: 0, ideal: 120)
#endif

        } detail: {
            Text("Select an item")
        }
       */
            VStack {
                GroupBox("LID") {
                    VStack {
                        Text(terrain.lid?.id ??
                             (quartier.lid?.id ??
                              (commune.lid?.id ??
                               (region.lid?.id ?? "")
                              )
                             )
                        )
                        Text(lid.id)
                    }
                }
                if terrain.adresse[0] != " \n" {
                    HStack{
                        GroupBox("adresse") {
                            Text(terrain.adresse[0] + " " + commune.nom)
                        }
                        if terrain.adresse[1] != "" {
                            GroupBox("autre adresse") {
                                Text(terrain.adresse[0] + " " + commune.nom)
                            }
                        }
                    }
                }
                Spacer()
                HStack {
                    VStack {
                        Text("communes")
                        
                        ForEach($region.communes){
                            item in
                            Button(action:{
                                commune = item.wrappedValue
                                quartier = Quartier()
                                terrain = Terrain()
                            })
                            { Text(item.wrappedValue.nom).frame(width:120) }
                        }
                    }
                    
                    CommuneView(commune:$commune, quartier:$quartier, terrain:$terrain)
                }.frame(alignment:.leading)
                Spacer()
            }
       }
        
    }
    
    func add() {
        region.communes.append(Commune())
        commune = region.communes.last!
    }
}
