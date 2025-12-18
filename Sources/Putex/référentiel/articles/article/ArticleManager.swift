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
    @State var full : Bool
    
    public init(_ ref:Binding<Articleref>, _ full:Bool) {
        _ref = ref
        self.full = full
    }
    
    public var body: some View {
        VStack {
            GroupBox {
                HStack {
                    Button("articles", action:{selected = 1})
                    Button("types", action:{selected = 2})
                    
                    if full {
                        Button("besoins", action:{selected = 3})
                        Button("contenants", action:{selected = 4})
                        Button("fermetures", action:{selected = 5})
                    }
                    Spacer()
                    Button(action:{full.toggle()})
                    {Image(systemName: full ? "chevron.left" : "chevron.right")}
                    
                }.padding(3)
            }
            Spacer()
            switch selected {
            case 1 :
                ArticleList($ref.articles, ref)
            case 2 :
                TypeArticleManager($ref.types, ref.besoins)
            case 3 :
                TaxionomyManager($ref.besoins)
            case 4 :
                TaxionomyManager($ref.contenants)
            case 5 :
                TaxionomyManager($ref.fermetures)
            default : Text("")
            }
        }
    }
}

#Preview {
    ArticleManager(.constant(ArticlerefDocument().ref), true).frame(width:800, height:600)
}
