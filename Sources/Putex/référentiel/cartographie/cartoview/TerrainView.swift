//
//  TerrainView.swift
//  Putex
//
//  Created by Herve Crespel on 05/11/2024.
//

import SwiftUI

public struct TerrainShow: View {
    @Binding var terrain:Terrain
    
    public var body: some View {
        if terrain.numvoie.voie != "" {
            HStack (spacing:25){
                GroupBox("Adresse") {
                    Text(terrain.adresses[0])
                }
                if terrain.autrenumvoie != nil {
                    GroupBox("autre adresse") {
                        Text(terrain.adresses[1])
                    }
                }
            }.padding(10)
        }
        GroupBox("Parcelles") {
            ScrollView {
                VStack(spacing:2){
                    ForEach ($terrain.parcelles) {
                        parcelle in
                        ParcelleShow(parcelle: parcelle)
                    }
                }.padding(10)
            }
        }.padding(10)
        
        GroupBox("valeur"){
            if terrain.valorisation == nil {
                Text("valeur à définir")
            } else {
                ValeurShow(terrain.valorisation!)
            }
        }
        
    }
}

public struct TerrainView: View {
    @Binding var terrain:Terrain
    @State var edition : Bool
    @State private var lid = LID()
    var modifiable = false
    
   func done() {
       terrain = Lieu(lid).terrain ?? Terrain()
        edition = true
    }
    
    public init(_ terrain:Binding<Terrain>, modifiable:Bool = false) {
        _terrain = terrain
        self.modifiable = modifiable
        edition = terrain.wrappedValue.lid == nil
    }
    public var body: some View {
        if terrain.lid == nil {
            VStack {
                LIDPicker($lid, done)
            }
        } else {
            VStack{
                if edition {
                    AdresseView(first:$terrain.numvoie, autre:$terrain.autrenumvoie, commune:terrain.commune)
                    GroupBox("parcelles") {
                        ParceList(parcelles: $terrain.parcelles).padding(10)
                    }.padding(20)
                    if let valeur:Binding<Valeur> = Binding($terrain.valorisation) {
                        GroupBox("valeur"){
                            ValeurView(valeur)
                        }
                    } else {
                        Button(action:{terrain.valorisation = Valeur()})
                        { Text("définir la valeur")}
                    }
                } else {
                    TerrainShow(terrain: $terrain)
                }
                Button(action:{
                    edition.toggle()
                })
                { Text(edition ? "valider les corrections" : "corriger")}.padding(20)
            }
        }
    }
}

/*public struct TerrainView: View {
    @Binding var terrain:Terrain
    @State var edition = false
    var modifiable = false
    
    public init(_ terrain:Binding<Terrain>, modifiable:Bool = false) {
        _terrain = terrain
        self.modifiable = modifiable
    }
    public var body: some View {
        if modifiable && edition {
            TerrainEditor($terrain, $edition)
        } else {
            VStack {
                TerrainShow(terrain:$terrain)
                if modifiable {
                    Button(action:{edition = true})
                    { Text("modifier") }
                }
            }
        }
    }
}*/

/*public struct TerrainEditor: View {
    @Binding var terrain:Terrain
    @Binding var edition:Bool
    
    public init(_ terrain:Binding<Terrain>, _ edition:Binding<Bool>) {
        _terrain = terrain
        _edition = edition
    }
    
    public var body: some View {
        ScrollView {
            VStack {
                
                GroupBox ("adresse"){
                    NumVoieEditor(numvoie: $terrain.numvoie)
                }.padding(.bottom, 20)
                if let optional: Binding<NumVoie> = Binding($terrain.autrenumvoie) {
                    GroupBox ("autre adresse"){
                        NumVoieEditor(numvoie: optional)
                    }
                } else {
                    Button("autre adresse") { terrain.autrenumvoie = NumVoie() }
                }
                GroupBox("parcelles"){
                    ParceList(parcelles:$terrain.parcelles)
                }
                Button(action:{edition = false})
                { Text("valider") }
            }.frame(alignment: .leading)
        }
        .padding(10)
    }
}*/



let unterrain = """
{"id":5758, 
"lid":{"continent":1,"territoire":1,"region":7,"commune":1},
"numvoie":{"voie":"avenue de Soubise", "num":"11", "codepostal":"59130"},
"autrenumvoie":{"voie":"avenue Watteau", "num":"1","codepostal":"59130"},
"parcelles":[
{"id":570, "surface":{"nombre":{"decimales":""},"quantité":"surface"}}, 
{"id":571, "surface":{"nombre":{"decimales":""},"quantité":"surface"}}, 
{"id":572, "surface":{"nombre":{"decimales":""},"quantité":"surface"}}, 
{"id":580, "surface":{"nombre":{"decimales":""},"quantité":"surface"}}, 
{"id":581, "surface":{"nombre":{"decimales":""},"quantité":"surface"}}, 
{"id":582, "surface":{"nombre":{"decimales":""},"quantité":"surface"}}, 
{"id":583, "surface":{"nombre":{"decimales":""},"quantité":"surface"}}, 
{"id":584, "surface":{"nombre":{"decimales":""},"quantité":"surface"}}, 
{"id":585, "surface":{"nombre":{"decimales":""},"quantité":"surface"}}, 
{"id":586, "surface":{"nombre":{"decimales":""},"quantité":"surface"}}, 
{"id":587, "surface":{"nombre":{"decimales":""},"quantité":"surface"}}, 
{"id":588, "surface":{"nombre":{"decimales":""},"quantité":"surface"}}
]
}
"""

struct TerrainPreview: View {
   // @State var terrain = Terrain(LID([1,1,6,1]))
    @State var terrain = Terrain(unterrain)
    var modifiable = false
    
    var body: some View {
        TerrainView($terrain, modifiable:modifiable)
            .frame(minWidth:600,minHeight:600)
    }
}

#Preview("création") {
    TerrainPreview(terrain:Terrain())
}
#Preview {
    TerrainPreview()
}

#Preview("modifiable") {
    TerrainPreview(modifiable:true)
}
