//
//  ContinentView.swift
//  Putex
//
//  Created by Herve Crespel on 08/11/2024.
//

import SwiftUI
/*struct MondeView : View {
    @State var selected: Int
    
    let continents = ["Europe", "Afrique"]
    
    var body:some View {
        TabView(selection: $selected) {
            ContinentView("Europe")
                .tabItem{Text("Europe"}.tag(1)
            
        }
}*/

struct ContinentView : View {
    @Binding var continent:Continent
    @State var selection = 0
   
    @State var edition = false
    @State var creation = false
    
    var body:some View {
        GroupBox(continent.nom) {
            HStack {
                TabView(selection: $selection) {
                    ForEach($continent.territoires){
                        territoire in
                        TerritoireView(territoire:territoire)
                            .tabItem{Text(territoire.wrappedValue.nom)}.tag(territoire.id)
                    }
                    Button(action:add)
                    { Text("ajouter un territoire")}
                }
                
            }
        }
    }
    func add() {
      //  selected = Territoire()
      //  continent.territoires.append(selected)
    }
}





struct CommuneView: View {
    @Binding var commune: Commune
    @Binding var quartier : Quartier
    @Binding var parcelle : Parcelle
    
    var body:some View {
        if commune.quartiers.count > 0 {
            GroupBox(commune.nom) {
                HStack {
                    VStack {
                        // TextField("",text:$commune.nom)
                        Text("quartiers")
                        ForEach($commune.quartiers){
                            item in
                            Button(action:{quartier = item.wrappedValue})
                            {
                                Text(item.wrappedValue.nom).frame(width:100)
                            }
                        }
                    }
                    
                    QuartierView(quartier:$quartier, parcelle:$parcelle)
                }.frame(alignment:.leading)
            }
        } else {
            if commune.nom != "" {
                Text("aucun quartier défini").padding(20)
            }
        }
    }
}

struct QuartierView : View {
    @Binding var quartier: Quartier
    @Binding var parcelle : Parcelle
    
    var body:some View {
        if quartier.parcelles.count > 0 {
            HStack {
                VStack {
                    Text("parcelles")
                    ForEach($quartier.parcelles){
                        item in
                        Button(action:{parcelle = item.wrappedValue})
                        {
                            Text(item.wrappedValue.nom).frame(width:100)
                        }
                    }
                }
                
                //ParcelleView(parcelle:$selected)
            }.frame(alignment:.leading)
        } else {
            if quartier.nom != "" {
                Text("aucune parcelle définie")
            }
        }
    }
}


struct ContinentPreview : View {
    @State var continent = Continent(Europe)
    
    var body:some View {
        ContinentView(continent: $continent)
            .frame(width:600,height:500)
    }
}

#Preview {
    ContinentPreview()
}
