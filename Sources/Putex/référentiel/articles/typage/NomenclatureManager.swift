//
//  NomenclatureManager.swift
//  Putex
//
//  Created by Herve Crespel on 01/12/2025.
//

import SwiftUI
import Taxionomy

public struct ArticleManager : View {
    @Binding var nomenclatures: Nomenclatures
    
    @State var selected = 0
    
    public init(_ nomenclatures:Binding<Nomenclatures>) {
        _nomenclatures = nomenclatures
    }
    
    public var body: some View {

            if nomenclatures.besoins.dim > 0 {
                TypeArticleManager($nomenclatures.types, nomenclatures.besoins)
                    .tabItem { Text("types") }.tag(2)
            }
            TaxionomyManager($nomenclatures.besoins)
                .tabItem { Text("besoins") }.tag(3)
            TaxionomyManager($nomenclatures.contenants)
                .tabItem { Text("contenants") }.tag(4)
            TaxionomyManager($nomenclatures.fermetures)
                .tabItem { Text("fermetures") }.tag(5)
        
    }
}
