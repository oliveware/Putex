//
//  NomenclatureManager.swift
//  Putex
//
//  Created by Herve Crespel on 01/12/2025.
//

import SwiftUI
import Taxionomy

struct SousTypesManager : View {
    @Binding var soustypes: [String:[SousType]]
    
    @State var selected = 0
    
    init(_ soustypes:Binding<[String:[SousType]]>) {
        _soustypes = soustypes
    }
    
    var keys: [String] {Array(soustypes.keys)}
    
    var body: some View {

       // ForEach (keys, id:\.self)
        
    }
}
