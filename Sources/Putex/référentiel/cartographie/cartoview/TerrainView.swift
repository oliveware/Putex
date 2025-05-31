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
        HStack (alignment:.top, spacing:20) {
            if terrain.numvoie.voie != "" {
                VStack (spacing:25){
                    GroupBox("Adresse") {
                        Text(terrain.address).padding(10)
                    }

                }.padding(10)
            }
            
            GroupBox("Parcelles") {
                VStack(spacing:2){
                    ForEach ($terrain.parcelles) {
                        parcelle in
                        ParcelleShow(parcelle: parcelle)
                    }
                }.padding(10)
            }.padding(10)
        }
       
        
    }
}

public struct TerrainView: View {
    @Binding var terrain:Terrain
    @State var edition : Bool
    @State private var lid = LID()
    var modifiable = false
    
    public init(_ terrain:Binding<Terrain>, modifiable:Bool = false) {
        _terrain = terrain
        let unchecked = !terrain.wrappedValue.checked
        edition = unchecked
        self.modifiable = unchecked ? true : modifiable
    }
    
    var surface:Mesure {
        var result = Mesure("0", .aire)
        for parcelle in terrain.parcelles {
            if let aire = result + parcelle.surface {
                result = aire
            }
        }
        return result
    }
    
    public var valeur: some View {
        Group {
            if let valeur:Binding<Valeur> = Binding($terrain.valorisation) {
                GroupBox("valeur"){
                    ValeurView(valeur)
                }
            } else {
                Button(action:{terrain.valorisation = Valeur()})
                { Text("définir la valeur")}
            }
        }
    }
    
    func creator() {
        terrain = Lieu(lid).terrain ?? Terrain(lid)
        print (terrain.lid ?? "lid nil")
        edition = true
     }
    
    public var body: some View {
        if terrain.lid == nil {
            VStack {
                LIDPicker($lid, creator)
            }
        } else {
            VStack{
                HStack {
                    valeur
                    Spacer()
                    Text("surface totale : " + surface.astring)
                }.padding(20)
                
                if edition {
                    TerrainEditor($terrain)
                } else {
                    TerrainShow(terrain: $terrain)
                }
                if modifiable {
                    Button(action:{ edition.toggle() })
                    { Text(edition ? "valider les corrections" : "corriger")}.padding(20)
                }
            }.frame(maxHeight:.infinity)
        }
    }
}

public struct TerrainEditor: View {
    @Binding var terrain:Terrain
    
    public init(_ terrain:Binding<Terrain>) {
        _terrain = terrain
    }
    
    public var body: some View {
        HStack(alignment:.top) {
            VStack(alignment: .leading) {
                AdresseDouble(first:$terrain.numvoie, autre:$terrain.autrenumvoie, commune:terrain.commune)
               
            }
        //    GroupBox("parcelles") {
                ParceList(parcelles: $terrain.parcelles).padding(10)
         //   }.padding(20)
               
        }.frame(alignment: .leading)
        .padding(10)
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

/**/



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
            .frame(minWidth:600,minHeight:500)
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
