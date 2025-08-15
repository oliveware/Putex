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
    @Binding var lid : LID
    @State var continent:Continent = Continents.Europe
    
    @State var selection = 0
    @State var edition = false
    @State var creation = false
    
    var body:some View {
        GroupBox(continent.nom) {
            VStack {
                TabView(selection: $selection) {
                    ForEach($continent.territoires){
                        territoire in
                        TerritoireView(lid:$lid, continent:$continent, territoire:territoire)
                            .tabItem{Text(territoire.wrappedValue.nom)}.tag(territoire.id)
                            .onChange(of:territoire.id, {lid=LID([continent.id, territoire.id])})
                    }
                    
                }
              //  Button("ajouter un territoire",action:add)
               
            }
        }
    }
    func add() {
        continent.add()
      //  selected = Territoire()
      //  continent.territoires.append(Territoire($continent.lid))
    }
}


struct ContinentPreview : View {
    @State var lid = LID([])
    var continent = Continents.Europe
    
    var body:some View {
        ContinentView(lid:$lid, continent: continent)
            .frame(width:600,height:500)
    }
}

#Preview {
    ContinentPreview()
}
