//
//  TerrainView.swift
//  Putex
//
//  Created by Herve Crespel on 05/11/2024.
//

import SwiftUI

public struct TerrainShow: View {
    var terrain:Terrain
    
    var commune:String {
        var nom = ""
        if let lid = terrain.lid {
            if let commune = Lieu(lid).commune {
                nom = commune.nom
            }
        }
        return nom
    }
    
    public var body: some View {
        if terrain.adresse[0] != " \n" {
            HStack{
                GroupBox("Adresse") {
                    Text(terrain.adresse[0] + " " + commune)
                }
                if terrain.adresse[1] != "" {
                    GroupBox("autre adresse") {
                        Text(terrain.adresse[1] + " " + commune)
                    }
                }
            }.padding(10)
        }
        GroupBox("Parcelles") {
            VStack{
                ForEach (terrain.parcelles) {
                    parcelle in
                    Text(parcelle.show).lineLimit(3)
                }
            }
        }.padding(10)
    }
}

public struct TerrainView: View {
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
                TerrainShow(terrain:terrain)
                if modifiable {
                    Button(action:{edition = true})
                    { Text("modifier") }
                }
            }
        }
    }
}

public struct TerrainEditor: View {
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
}

struct NumVoieEditor: View {
    @Binding var numvoie:NumVoie
    
    var body:some View {
        VStack {
            TextField("voie      ", text:$numvoie.voie)
            HStack {
                TextField("numéro", text:$numvoie.num)
                    .frame(width:100)
                TextField("code postal", text:$numvoie.codepostal)
            }
        }.frame(alignment: .leading)
    }
}

/*struct NumVoieEdit: View {
    @Binding var numvoie:NumVoie?
    
    var body:some View {
        if let optional: Binding<NumVoie> = Binding($numvoie) {
            VStack {
                TextField("voie ", text:optional.voie)
                HStack {
                    TextField("numéro", text:optional.num)
                        .frame(width:100)
                    
                    TextField("code postal", text:optional.codepostal)
                }
            }.frame(alignment: .leading)
        } else {
            Button("autre adresse") { numvoie = NumVoie() }
        }
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
            .frame(width:500)
    }
}

#Preview {
    TerrainPreview()
}

#Preview("modifiable") {
    TerrainPreview(modifiable:true)
}
