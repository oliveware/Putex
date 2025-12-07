//
//  ArticleManager.swift
//  Semantex
//
//  Created by Herve Crespel on 14/11/2025.
//

import SwiftUI
import Taxionomy
import Putex

public struct ArticleManager : View {
    @Binding var ref: Articleref
    
    @State var selected = 0
    
    public init(_ ref:Binding<Articleref>) {
        _ref = ref
    }
    
    public var body: some View {
        TabView(selection: $selected) {
            if ref.types.count > 0 {
                ArticleList($ref.articles, ref)
                .tabItem { Text("articles") }.tag(1)
            }
            NomenclatureManager($ref.nomenclatures)
        }
    }
}
