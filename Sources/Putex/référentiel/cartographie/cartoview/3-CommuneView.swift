//
//  CommuneView.swift
//  Putex
//
//  Created by Herve Crespel on 09/11/2024.
//
import SwiftUI

struct CommuneView: View {
    @Binding var lid:LID
    var continent:Continent
    var territoire: Territoire
    var region: Region
    @Binding var commune : Commune
    @Binding var quartier : Quartier
    @Binding var parcelle : Parcelle
    
    @State private var choix = false
    
    func choisir() {
        if commune.quartiers.count == 1 {
            let quart = commune.quartiers[0]
            quartier = quart
            parcelle = Parcelle()
            lid = LID([continent.id, territoire.id, region.id, commune.id, quart.id])
        } else {
            choix = true
        }
    }
    
    var body:some View {
        if commune.quartiers.count > 0 {
                HStack(alignment:.top)  {
                    VStack {
                        // TextField("",text:$commune.nom)
                        Text("quartier")
                        if !choix {
                            HStack {
                                Text(quartier.nom).frame(width:150).padding(3)
                                if commune.quartiers.count > 1 {
                                    Button(action:{ choix = true })
                                    {Image(systemName: "chevron.down") }
                                }
                            }
                        } else {
                            ForEach($commune.quartiers){
                                item in
                                Button(action:{
                                    quartier = item.wrappedValue
                                    parcelle = Parcelle()
                                    lid = LID([continent.id, territoire.id, region.id, commune.id, item.id])
                                    choix = false
                                })
                                {
                                    Text(item.wrappedValue.nom).frame(width:100)
                                }
                            }
                        }
                    }
                    
                    QuartierView(lid:$lid, continent:continent, territoire:territoire, region:region, commune:commune, quartier:$quartier, parcelle:$parcelle)
                }.frame(alignment:.leading)
            
        } else {
            if commune.nom != "" {
                Text("aucun quartier défini à " + commune.nom).padding(20)
            }
        }
    }
}

