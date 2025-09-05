//
//  TerrainView.swift
//  Putex
//
//  Created by Herve Crespel on 05/11/2024.
//

import SwiftUI

public struct TerrainShow: View {
    @Binding var terrain:Terrain
    
    var parcelles : [Parcelle] {
        var parc: [Parcelle] = []
        for lid in terrain.parcelles {
            if let parcelle = Lieu(lid).parcelle {
                parc.append(parcelle)
            }
        }
        return parc
    }
    
    public var body: some View {
        VStack ( spacing:20) {
            if terrain.checked {
                GroupBox("Adresse") {
                    Text(terrain.cartoucheAdresses()).padding(10)
                }
            }
            
            GroupBox("Parcelles") {
                
                ForEach(parcelles) {
                    parcelle in
                    HStack (spacing:30){
                        Text("n° " + String(parcelle.id))
                        Text(parcelle.surface.astring)
                    }
                }
            
            }.padding(10)
        }.padding(10)
    }
}

public struct TerrainView: View {
    @Binding var terrain:Terrain
    @State var edition : Bool
   
    var modifiable = false
    
    public init(_ terrain:Binding<Terrain>, modifiable:Bool = false) {
        _terrain = terrain
        let unchecked = !terrain.wrappedValue.checked
        edition = unchecked
        self.modifiable = unchecked ? true : modifiable
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
    
    
    
    public var body: some View {
        VStack{
            valeur
           .padding(20)
            
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

public struct TerrainEditor: View {
    @Binding var terrain:Terrain
    
    public init(_ terrain:Binding<Terrain>) {
        _terrain = terrain
    }
    
    public var body: some View {
        HStack(alignment:.top) {
           Text("ajouter une parcelle")
               
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
            .frame(minWidth:700,minHeight:500)
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
