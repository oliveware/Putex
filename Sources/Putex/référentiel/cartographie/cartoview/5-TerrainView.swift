//
//  TerrainView.swift
//  Putex
//
//  Created by Herve Crespel on 05/11/2024.
//

import SwiftUI

public struct TerrainView: View {
    @Binding var terrain:Terrain
    @State var edition : Bool
    
    public init(_ terrain:Binding<Terrain>) {
        _terrain = terrain
        edition = terrain.wrappedValue.isNaN
    }
    
    public var body: some View {
        if edition {
            GroupBox {
                HStack {
                    TerrainEditor($terrain)
                    Spacer()
                    Button(action: { edition = false})
                    {Image(systemName: "checkmark")}
                }
            }
        } else {
            HStack {
                TerrainShow(terrain: $terrain)
 
                Spacer()
                Button(action: { edition = true})
                {Image(systemName: "pencil")}
            }
        }
    }
}

public struct TerrainShow: View {
    @Binding var terrain:Terrain
    
    public var body: some View {
        VStack ( alignment:.leading, spacing:10 ) {
          /*  if terrain.numvoie.voie != "" {
                GroupBox("Adresse") {
                    Text(terrain.address).padding(10)
                }
            }*/

            GroupBox("Parcelles") {
                ParceList(parcelles: $terrain.parcelles).padding(10)
            }.frame(height:CGFloat(terrain.parcelles.count * 5))
 
        }.padding(10)
    }
}

public struct TerrainPicker: View {
    @Binding var terrain:Terrain
    @State private var lid = LID()

    
    public init(_ terrain:Binding<Terrain>) {
        _terrain = terrain
    }
    
    func done() {
        terrain = Lieu(lid).terrain ?? Terrain()
    }

    public var body: some View {
        VStack {
            LIDPicker($lid, done)
        }
    }
}

public struct TerrainEditor: View {
    @Binding var terrain:Terrain
    
    public init(_ terrain:Binding<Terrain>) {
        _terrain = terrain
    }
    
    public var body: some View {
       
        VStack(alignment: .leading, spacing:30) {
            AdresseDouble(first:$terrain.numvoie, autre:$terrain.autrenumvoie, commune:terrain.commune)
       
            ParceList(parcelles: $terrain.parcelles, edition:true).padding(10)
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
    
    @State private var voir = false
    @State var lid = LID()
    
    var body: some View {
        VStack(spacing:20) {
            if voir {
                Text("lieu : \(Lieu(lid).terrain)")
                Text("new : \(Terrain(lid))")
                Text("terrain : \(terrain)")
                Button("vu", action:{voir = false})
            } else {
                TerrainPicker($terrain)
                    .frame(width:600,height:500)
                  //  .onChange(of: terrain.id, {lid = terrain.lid!})
                
                Button("voir", action : {
                    if let terrainlid = terrain.lid {
                        lid = terrainlid
                        
                    }
                    voir = true
                })//.disabled(lid.terrain == nil)
            }
            
        }
        
    }
}

#Preview("création") {
    TerrainPreview(terrain:Terrain())
}
#Preview {
    TerrainPreview()
}

