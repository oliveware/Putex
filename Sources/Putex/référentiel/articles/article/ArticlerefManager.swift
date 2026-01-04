//
//  ArticleFullManager.swift
//  Semantex
//
//  Created by Herve Crespel on 14/11/2025.
//

import SwiftUI
import Taxionomy

public struct ArticlerefManager : View {
    @Binding var ref: Articleref
    
    @State var selected = 1
    @State var full = false
    var extend : Bool
    
    public init(_ ref:Binding<Articleref>, _ full:Bool) {
        _ref = ref
        extend = full
    }
    
    public var body: some View {
        VStack {
            GroupBox {
                HStack {
                    Button("articles", action:{selected = 1})
                        .background(selected == 1 ? Color.gray : Color.black)
                    Button("types", action:{selected = 2})
                        .background(selected == 2 ? Color.gray : Color.black)
                    if full {
                        Button("besoins", action:{selected = 3})
                        Button("contenants", action:{selected = 4})
                        Button("fermetures", action:{selected = 5})
                    }
                    Spacer()
                    if extend {
                        Button(action:{full.toggle()})
                        {Image(systemName: full ? "chevron.left" : "chevron.right")}
                    }
                }.padding(3)
            }
            Spacer()
            switch selected {
            case 1 :
                liste
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
        
    var ajout: some View {
        Button(action:{
            ref.add()
        })
        {Text("ajouter un article")}
    }
        
    @State var modif = false
    var liste: some View {
            VStack(alignment: .center) {
                if ref.articles.count == 0 {
                    ajout
                } else {
                GroupBox("Articles disponibles") {
                    ScrollView {
                        ForEach($ref.articles){
                            item in
                            HStack(spacing:30) {
                                if modif {
                                    ConfirmedButton("minus", "cet article  (\(item.id))", {ref.delete(item.wrappedValue)
                                        modif = false})
                                }
                                ArticleView(item, ref)
                            }
                        }
                    }
                }
            
                HStack {
                    if ref.articles.count > 0 {
                        Button(action:{modif.toggle()})
                        {Image(systemName: "minus")}
                    }
                    Spacer()
                    ajout
                    Spacer()
                }
            }
        }.padding(10)
    }
    
}

#Preview {
    ArticlerefManager(.constant(ArticlerefDocument("http://pi.inawani.org").ref), true).frame(width:800, height:600)
}
