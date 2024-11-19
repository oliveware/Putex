//
//  TerritoireView.swift
//  Putex
//
//  Created by Herve Crespel on 08/11/2024.
//
import SwiftUI

struct TerritoireView : View {
    @Binding var territoire: Territoire

    @State var commune = Commune()
    @State var quartier = Quartier()
    @State var terrain = Terrain()

    var body:some View {
        NavigationSplitView {
            List {
                ForEach($territoire.regions) { item in
                    NavigationLink {
                        RegionView(region:item, commune:$commune, quartier:$quartier, terrain:$terrain,
                                   territoire:territoire)
                            .onChange(of:item.id) {
                                commune = Commune()
                                quartier = Quartier()
                                terrain = Terrain()
                            }
                    } label: {
                        Text(item.wrappedValue.nom)
                    }
                }
              //  .onDelete(perform: deleteItems)
            }
#if os(macOS)
            .navigationSplitViewColumnWidth(min: 130, ideal: 120)
#endif

       } detail: {
            Text("Select an item")
        }

    }
}

struct TerritoirePreview : View {
    @State var territoire = Territoire(France)
    
    var body:some View {
        TerritoireView(territoire: $territoire)
            .frame(width:600,height:500)
    }
}

#Preview {
    TerritoirePreview()
}
