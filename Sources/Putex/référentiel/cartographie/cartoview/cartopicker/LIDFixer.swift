//
//  LIDPicker.swift
//  Putex
//
//  Created by Herve Crespel on 07/10/2025.
//
import SwiftUI

public struct LIDFixer: View {
    @Binding var terrain:Terrain
    @State private var lid = LID()

    
    public init(_ terrain:Binding<Terrain>) {
        _terrain = terrain
    }

    public var body: some View {
        VStack {
            Text("Emplacement géographique")
                .font(.title3).padding(20)
            if terrain.isNaN {
                LIDPicker($lid, {})
            } else {
                TerrainView($terrain)
            }
            if lid.terrain != nil && terrain.isNaN {
                  Button("choisir ce terrain", action: {
                      terrain = Lieu(lid).terrain ?? Terrain()
                  }).padding(10)
              }
        }
    }
}
