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

struct ContinentView: View {
    @Binding var continent: Continent
    
    @State private var edition = false
    @State private var lid = LID()
    @State private var territoire = Territoire()
    
    var body:some View {
        if continent.nom == "" {
            ContinentPicker(lid:$lid, continent: $continent, territoire: $territoire)
        } else {
            if edition {
                VStack {
                    Spacer()
                    ContinentEditor(continent:$continent)
                    Spacer()
                    Button("valider", action:{ edition = false })
                }
            } else {
                Spacer()
                ContinentShow(continent:continent)
                Spacer()
                Button("modifier", action:{ edition = true })
            }
        }
        
    }
    
}

struct ContinentShow: View {
    var continent: Continent
    
    var body:some View {
        HStack (spacing:50) {
            Text(continent.nom).font(.title)
            GroupBox("territoires") {
                VStack(alignment: .leading) {
                    ForEach(continent.territoires) {
                        item in
                        Text(item.nom)
                    }
                }
            }
        }
    }
}

struct ContinentEditor: View {
    @State var world = World(continents).sept
    @Binding var continent: Continent

    var body:some View {
        HStack(spacing:30) {
            VStack {
                TextField("nom", text:$continent.nom).frame(width:100)
                Button("ajouter un territoire", action:{continent.territoires.append(Territoire())})
            }
            GroupBox("territoires") {
               ScrollView{
                ForEach($continent.territoires) {
                    item in
                    TerritoireView(item)
                }.frame(alignment:.leading)
               }//.frame(height:CGFloat(continent.territoires.count * 7))
            }
        }
        
    }
}


struct ContinentPreview : View {
    @State var continent = Continent()
    
    var body:some View {
        ContinentView(continent: $continent)
            .frame(width:800)
    }
}

#Preview {
    ContinentPreview().padding()
}
#Preview("Europe") {
    ContinentPreview(continent : World.Europe).padding()
}
