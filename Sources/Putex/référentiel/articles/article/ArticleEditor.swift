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
    var type:TypeArticle
    @Binding var article:Article
    @State var modele: ModeleArticle
    @Binding var edition : Bool
 //   @State var besoin: Taxion
    
    init(_ article:Binding<Article>, _ ref:Articleref, _ edition:Binding<Bool>) {
        _article = article
        self.ref = ref
        type = article.wrappedValue.type(ref)
    //    type = ref.type(article.wrappedValue.tid)
 //       besoin = ref.besoin(type.id)
        if let model = article.wrappedValue.modele {
            modele =  model
        } else {
            modele = ModeleArticle()
        }
        _edition = edition
    }
    
    var body: some View {
        VStack(alignment:.leading) {
            Text("description d'un article").font(.title3).padding()
            HStack {
                Text("label : ")
                TextField("label", text:$article.label)
            }.padding()
            if article.tid == "" {
                if ref.types.count > 0 {
                    Typicker($article.tid, ref.types)
                } else {
                    Text("aucun type n'est défini")
                }
            } else {
                if article.modele == nil {
                    Button("ajouter un modèle", action:{article.modele = ModeleArticle()})
                } else {
                    ModelageArticle(type, $modele)
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
                
                if let cadrage = type.cadrage {
                    OptionArticleView(cadrage, Binding<OptionArticle>(
                        get: { $article.wrappedValue.option ?? OptionArticle("") },
                        set: { article.option = $0}
                    ), type.configurator )
                    Spacer()
                  /*  if configurable {
                        Button(action:{select( option.wrappedValue)})
                        {Image(systemName: "arrow.right")}
                    }*/
                }
            }

            Spacer()
            HStack {
                Spacer()
                Button("annuler", action:{edition = false})
                if !article.isNaN {
                    Button(action:{
                        //article.modele = modele.isNaN ? nil : modele
                        if modele.isNaN {
                            article.modele = nil
                        } else {
                            article.modele = modele
                        }
                        edition = false})
                    {Text("valider")}
                }
                Spacer()
            }
        }.padding()
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
