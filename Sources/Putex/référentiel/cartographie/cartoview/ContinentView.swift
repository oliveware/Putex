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
