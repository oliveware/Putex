//
//  ArticleView.swift
//  Semantex
//
//  Created by Herve Crespel on 23/01/2025.
//

import SwiftUI
import Putex

struct ArticleView: View {
    var ref:Articleref
    @Binding var article:Article
    @State private var edition :Bool
    
    init(_ article:Binding<Article>, _ ref:Articleref) {
        _article = article
        edition = article.wrappedValue.isNaN
        self.ref = ref
    }

    var body:some View {
        HStack {
            Text(article.show)
            Spacer()
            Button(action:{edition = true})
            {Image(systemName: "pencil")}
                .sheet(isPresented:$edition)
            {ArticleEditor($article, ref, $edition)}
        }

    }
}

import Fichiers
struct ArticlePreview: View {
  //  var fichier = Fichier("dodata", "test", .json)
    @State var article : Article
    var ref : Articleref
    @State private var erreur: String?
    
    init(_ articleref:String) {
        let ref = ArticlerefDocument(articleref).ref
        self.ref = ref
        article = ref.articles[1]
    }
    
    var body:some View {
        VStack {
            ArticleView($article, ref)
            /*    .task {
                    do {
                        let data = try await fichier.readhttp("http://192.168.1.41/")
                        let jsonData = data.data(using: .utf8)!
                        ref = try JSONDecoder().decode(Articleref.self, from: jsonData)
                    } catch {
                        erreur = error.localizedDescription
                    }
                }*/
        }
    }
}

#Preview {
    ArticlePreview(articlerefjson).frame(width:600, height:300).padding(10)
}
