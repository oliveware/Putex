//
//  ArticleEditor.swift
//  Semantex
//
//  Created by Herve Crespel on 15/11/2025.
//
import SwiftUI
import Taxionomy

struct ArticleEditor: View {
    var ref:Articleref
    @State var type:TypeArticle
    @Binding var article:Article
    @State var modele: ModeleArticle
    @Binding var edition : Bool
    
    init(_ article:Binding<Article>, _ ref:Articleref, _ edition:Binding<Bool>) {
        _article = article
        self.ref = ref
        let type = article.wrappedValue.type(ref)
        self.type = type
        if let model = article.wrappedValue.modele {
            modele =  model
        } else {
            modele = ModeleArticle(type)
        }
        _edition = edition
    }
    
    var typicker: some View {
        Typicker($type, ref.types, {
            article.tid = type.id
            article.label = type.label
        })
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment:.leading) {
                //  Text("description d'un article").font(.title3).padding()
                if ref.types.count > 0 {
                    if article.tid == "" {
                        typicker
                    } else {
                        TextField("label", text:$article.label)
                                .font(.title3).padding(.bottom,5)
                        typicker
                        Text(type.details)
                        if let cadrage = type.cadrage {
                            OptionArticleView(cadrage, Binding<OptionArticle>(
                                get: { $article.wrappedValue.option ?? OptionArticle("") },
                                set: { article.option = $0}
                            ), type.configurator )
                        }
                        
                        if article.modele == nil {
                            Button("ajouter un modèle", action:{
                                article.modele = ModeleArticle(type)
                            }).padding()
                        } else {
                            ModeleArticleEditor(type, $modele, {
                                article.modele = modele.isNaN ? nil : modele
                            })
                        }
                        
                        if type.conditionné {
                            if article.conditionnement == nil {
                                Button(" préciser le conditionnement", action:{ article.conditionnement = Conditionnement()})
                            } else {
                                HStack {
                                    Button(action:{ article.conditionnement = nil })
                                    {Image(systemName: "delete.right")}
                                    ConditionnementView(Binding<Conditionnement>(
                                        get: {article.conditionnement ?? Conditionnement()},
                                        set: {article.conditionnement = $0.isNaN ? nil : $0}
                                    ), ref.fermetures, ref.contenants, {})
                                }
                            }
                        }
                        
                        
                    }
                    
                  /*  Spacer()
                    HStack {
                        Spacer()
                        Button("annuler", action:{edition = false})
                        if !article.isNaN {
                            Button(action:{ edition = false })
                            {Text("valider")}
                        }
                        Spacer()
                    }*/
                } else {
                    Text("aucun type n'est défini")
                }
            }.padding()
        }
    }
}

struct ArticlePreditor: View {
    @State var article:Article
    @State var edition = true
    var refarticle : Articleref
    
    init(_ articleref:String) {
        let ref = ArticlerefDocument(articleref).ref
        refarticle = ref
        article = ref.articles[0]
    }
    
    var body:some View {
        VStack {
            ArticleEditor($article, refarticle, $edition)
           // Text(article.show)
        }
    }
}

#Preview {
    ArticlePreditor(articlerefjson).frame(width:600, height:600).padding(10)
}
