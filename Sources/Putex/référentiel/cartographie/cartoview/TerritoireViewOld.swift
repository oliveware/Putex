//
//  TerritoireView.swift
//  Putex
//
//  Created by Herve Crespel on 08/11/2024.
//
import SwiftUI

// NavigationSplitView ne convient pas parce qu'elle crée un bandeau supérieur qui parasite la View englobante
struct TerritoireViewOld : View {
    @Binding var lid:LID
    @Binding var continent: Continent
    @Binding var territoire: Territoire
    @State var region = Region()
    @State var commune = Commune()
    @State var quartier = Quartier()
    @State var terrain = Terrain()
    

    var body:some View {
        NavigationSplitView {
            List {
                ForEach($territoire.regions) { item in
                    if item.wrappedValue.avecterrains {
                        NavigationLink {
                            RegionView(lid:$lid,  continent:continent, territoire:territoire, region:item, commune:$commune, quartier:$quartier, terrain:$terrain )
                                .onChange(of:item.id) {
                                    region = item.wrappedValue
                                    commune = Commune()
                                    quartier = Quartier()
                                    terrain = Terrain()
                                    lid = LID([continent.id, territoire.id, item.id])
                                }
                        } label: {
                            Text(item.wrappedValue.nom)
                        }
                    }
                    
                }
              //  .onDelete(perform: deleteItems)
            }

#if os(macOS)
            .navigationSplitViewColumnWidth(min: 130, ideal: 150)
#endif

       } detail: {
            Text("Select an item")
        }

    }
}

struct TerritoirePreviewOld : View {
    @State var continent = Continents.Europe
    @State var territoire = Deutschland ?? Territoire(FR)
    @State var lid = LID([1])
    
    var body:some View {
        TerritoireViewOld(lid:$lid, continent:$continent, territoire: $territoire)
            .frame(width:600,height:500)
    }
}

#Preview {
    TerritoirePreviewOld()
}
