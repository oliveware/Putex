//
//  ArticleChooser.swift
//  Putex
//
//  Created by Herve Crespel on 07/12/2025.
//

import SwiftUI

public struct ArticleChooser : View {
    var ref : Articleref
    @Binding var article: Article
    var done: () -> Void
    
    public init(_ article:Binding<Article>, _ ref:Articleref, _ done:@escaping () -> Void) {
        _article = article
        self.ref = ref
     //  taxion = ref.besoin(article.wrappedValue.tid)
        self.done = done
    }
    
    var tidid: String {article.tid}
    
    public var body : some View {
        VStack {

            if ref.type(tidid).id == "" {
                Text("aucun article de ce type")
            } else {
                GroupBox("Articles disponibles") {
                    ScrollView {
                        ForEach(ref.sametid(tidid)){
                            item in
                            HStack(spacing:30) {
                                Text(article.show)
                                Spacer()
                                Button(action:{
                                    article = item
                                    done()
                                })
                                {Image(systemName: "square.and.arrow.down")}
                            }
                        }
                    }
                }
            }
        }
        
    }
}
