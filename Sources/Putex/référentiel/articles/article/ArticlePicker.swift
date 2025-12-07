//
//  ArticlePicker.swift
//  Semantex
//
//  Created by Herve Crespel on 19/11/2025.
//
import SwiftUI


struct ArticlePicker : View {
    var ref : Articleref
    @Binding var article: Article
    var done: () -> Void
    @State var pick : Bool
    
    public init(_ article:Binding<Article>, _ ref:Articleref, _ done:@escaping () -> Void) {
        _article = article
        self.ref = ref
     //  taxion = ref.besoin(article.wrappedValue.tid)
        self.done = done
        pick = article.wrappedValue.isNaN
    }

    
   var body : some View {
        VStack (){
            HStack {
                Spacer()
                Text("article").font(.title3)
                Spacer()
                Button(action:{pick = true})
                {Image(systemName: "list.triangle")}
            }
            if pick {
                ArticlePicker($article, ref, {
                    pick = false
                    done()
                })
            } else {
                ArticleShow(article, ref)
            }
        }.padding().border(.gray).cornerRadius(3)
    }
}


