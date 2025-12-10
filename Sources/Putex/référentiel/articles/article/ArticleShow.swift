//
//  Untitled.swift
//  Semantex
//
//  Created by Herve Crespel on 19/11/2025.
//

import SwiftUI


struct ArticleShow: View {
    var ref:Articleref
    var article:Article
    
    init(_ article:Article, _ ref:Articleref) {
        self.article = article
        self.ref = ref
    }
    
    var type:TypeArticle {
        ref.type(article.tid)
    }

    var body:some View {
        VStack {
            HStack {
                VStack(alignment:.leading) {
                    
                    Text(article.label).font(.title2).padding(.bottom,20)
                    
                    if article.tid == "" {
                        Text("type non défini")
                    } else {
                        Text(type.line)
                        Text(type.details)
                    }
                    
                    if let modele = article.modele {
                        Text(modele.show)
                    }
                }
                if let modele = article.modele {
                    if let modelimage = modele.imagurl, let url = URL(string: modelimage) {
                        WebPicture(url).frame(width:200, height:200)
                    } else {
                        if let typimage = type.imagurl, let url = URL(string: typimage) {
                            WebPicture(url).frame(width:200, height:200)
                        }
                    }
                }
            }
            if let modele = article.modele {
                if let webpage = modele.url, let url = URL(string: webpage) {
                    WebView(url: url)
                } else {
                    if let webpage = type.url, let url = URL(string: webpage) {
                        WebView(url: url)
                    }
                }
            }
        }.padding()
    }
}


struct ArticlePreshow : View {
   // var ref = ArticlerefDocument(url:"http://192.168.1.41/dodata.test.json").ref
    var ref = refarticle
    var body: some View {
        ArticleShow(ref.articles[2],ref)
    }
}

#Preview {
    ArticlePreshow()
}
