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
    @State var full : Bool?
    
    public init(_ ref:Binding<Articleref>, _ full:Bool = false) {
        _ref = ref
        if full {self.full = true}
    }
    
    public var body: some View {
        HStack(alignment:.top) {
            TabView(selection: $selected) {
                ArticleList($ref.articles, ref)
                    .tabItem { Text("articles") }.tag(1)
                TypeArticleManager($ref.types, ref.besoins)
                    .tabItem { Text("types") }.tag(2)
                if let full = full {
                    TaxionomyManager($ref.besoins)
                        .tabItem { Text("besoins") }.tag(3)
                    TaxionomyManager($ref.contenants)
                        .tabItem { Text("contenants") }.tag(4)
                    TaxionomyManager($ref.fermetures)
                        .tabItem { Text("fermetures") }.tag(5)
                }
            }
            Spacer()
            if let full = full {
                Button(action:{self.full!.toggle()})
                {Image(systemName: full ? "chevron.left" : "chevron.right")}
            }
        
        }
    }
}
