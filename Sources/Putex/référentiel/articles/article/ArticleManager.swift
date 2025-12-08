//
//  ArticleManager.swift
//  Semantex
//
//  Created by Herve Crespel on 14/11/2025.
//

import SwiftUI
import Taxionomy

public struct ArticleManager : View {
    @Binding var ref: Articleref
    
    @State var selected = 0
    
    public init(_ ref:Binding<Articleref>) {
        _ref = ref
    }
    
    public var body: some View {
        TabView(selection: $selected) {
            ArticleList($ref.articles, ref)
                .tabItem { Text("articles") }.tag(1)
            TypeArticleManager($ref.types, ref.besoins)
                .tabItem { Text("types") }.tag(2)
            TaxionomyManager($ref.besoins)
                .tabItem { Text("besoins") }.tag(3)
            TaxionomyManager($ref.contenants)
                .tabItem { Text("contenants") }.tag(4)
            TaxionomyManager($ref.fermetures)
                .tabItem { Text("fermetures") }.tag(5)
        
        }
    }
}
