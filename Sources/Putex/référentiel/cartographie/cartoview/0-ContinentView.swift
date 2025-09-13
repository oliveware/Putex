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
    @State var world = Continents(continents).sept
    @Binding var lid : LID
    @Binding var continent: Continent
    @Binding var territoire: Territoire
    
    @State var selection = 0
    @State var edition = false
    @State var creation = false
    
    var barre:some View {
        HStack {
            if continent.nom != "" {
                Button(action:{
                    continent = Continent()
                    territoire = Territoire()
                })
                {Text(continent.nom)}

            }
            Spacer()
        }
    }
    
    var body:some View {
        VStack {
            barre
            Spacer()
            if continent.nom == "" {
                HStack {
                    VStack(alignment:.leading) {
                        ForEach($world){
                            item in
                            Button(action:{continent = item.wrappedValue})
                            {Text(item.wrappedValue.nom).frame(width:150, alignment: .center)}
                            
                        }
                    }
                    Spacer()
                    Text("Choisir un continent")
                    Spacer()
                }
            } else {
                if territoire.nom == "" {
                    HStack {
                        VStack(alignment:.leading) {
                            ForEach($continent.territoires){
                                item in
                                Button(action:{territoire = item.wrappedValue})
                                {Text(item.wrappedValue.nom).frame(width:150, alignment: .center)}
                                
                            }
                        }
                        Spacer()
                        Text("Choisir un territoire")
                        Spacer()
                    }
                } else {
                    TerritoireView(lid:$lid, continent:$continent, territoire:$territoire)
                        .onChange(of:territoire.id, {lid=LID([continent.id, territoire.id])})
                }
            }
            Spacer()
                //  Button("ajouter un territoire",action:add)
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
    @State var continent = Continents.Europe
    @State var territoire = Deutschland ?? Territoire(FR)
    
    var body:some View {
        ContinentView(lid:$lid, continent: $continent, territoire: $territoire)
            .frame(width:600,height:500)
    }
}

#Preview {
    ContinentPreview().padding()
}
