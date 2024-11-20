//
//  LIDPicker.swift
//  Putex
//
//  Created by Herve Crespel on 19/11/2024.
//
import SwiftUI

struct LIDPicker : View {
    @State var lid = LID([])
    @State var edit = false
    
    var body: some View {
        Button(action: {})
        {Text("adresse")}
            .sheet(isPresented: $edit, content: {
                ContinentView(lid: $lid, continent: Continents.Europe)
            })
    }
}
