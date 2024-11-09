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
    @Binding var parcelle : Parcelle

    
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
           HStack {
               VStack {
                   Text("communes")
                   
                   ForEach($region.communes){
                       item in
                       Button(action:{
                           commune = item.wrappedValue
                           quartier = Quartier()
                           parcelle = Parcelle()
                       })
                       { Text(item.wrappedValue.nom).frame(width:120) }
                   }
               }
               
               CommuneView(commune:$commune, quartier:$quartier, parcelle:$parcelle)
           }.frame(alignment:.leading)
       }
        
    }
    
    func add() {
        region.communes.append(Commune())
        commune = region.communes.last!
    }
}
