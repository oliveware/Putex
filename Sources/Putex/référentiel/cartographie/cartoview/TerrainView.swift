//
//  TerrainView.swift
//  Putex
//
//  Created by Herve Crespel on 05/11/2024.
//

import SwiftUI

public struct TerrainView: View {
    @Binding var terrain:Terrain
    
    public init(_ terrain:Binding<Terrain>) {
        _terrain = terrain
    }
    
    public var body: some View {
        Form {
            VStack {
                GroupBox("parcelles"){
                    
                }
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



struct TerrainPreview: View {
    @State var terrain = Terrain(LID([1,1,6,1]))
    
    var body: some View {
        TerrainView($terrain)
            .frame(width:300, height: 300)
    }
}

#Preview {
    TerrainPreview()
}
