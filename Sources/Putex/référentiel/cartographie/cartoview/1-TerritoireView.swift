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
    

    var body:some View {
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
            if region.id == Region().id {
                Text("Choisir une région")
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
              //  .onDelete(perform: deleteItems)
        }.frame(alignment: .leading)

    }
}

struct TerritoirePreview : View {
    @State var continent = Continents.Europe
    @State var territoire = Deutschland ?? Territoire(FR)
    @State var lid = LID([1])
    
    var body:some View {
        TerritoireView(lid:$lid, continent:$continent, territoire: $territoire)
            .frame(width:600,height:500)
    }
}

#Preview {
    TerritoirePreview().padding()
}
