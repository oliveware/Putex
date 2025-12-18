//
//  ArticleFullManager.swift
//  Semantex
//
//  Created by Herve Crespel on 14/11/2025.
//

import SwiftUI
import Taxionomy

public struct ArticleManager : View {
    @Binding var ref: Articleref
    
    @State var selected = 0
    @State var full = false
    
    public init(_ ref:Binding<Articleref>) {
        _ref = ref
    }
    
    public var body: some View {
        TabView(selection: $selected) {
            ArticleList($ref.articles, ref)
                .tabItem { Text("articles") }.tag(1)
            TypeArticleManager($ref.types, ref.besoins)
                .tabItem { Text("types") }.tag(2)
            if full {
                TaxionomyManager($ref.besoins)
                    .tabItem { Text("besoins") }.tag(3)
                TaxionomyManager($ref.contenants)
                    .tabItem { Text("contenants") }.tag(4)
                TaxionomyManager($ref.fermetures)
                    .tabItem { Text("fermetures") }.tag(5)
            }
            Spacer()
            Button(action:{full.toggle()})
            {Image(systemName: full ? "chevron.left" : "chevron.right")}
        
        }
    }
}
