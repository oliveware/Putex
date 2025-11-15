//
//  TypeArticleShow.swift
//  Putex
//
//  Created by Herve Crespel on 12/11/2025.
//

import SwiftUI
import Taxionomy

struct TypeArticleShow: View {
    var type: TypeArticle
    
    init(_ type:TypeArticle) {
        self.type = type
    }
    
    public var body : some View {
        VStack(alignment:.leading) {
            HStack {
                VStack {
                    Text("description : \(type.show)")
                    if let sub = type.sub {
                        Text("sous-catégorie : \(sub)")
                    }
                }
                if let image = type.imagurl, let url = URL(string: image) {
                    WebPicture(url)
                        .frame(width:200, height:200)
                }
            }
            if let webpage = type.url, let url = URL(string: webpage) {
                WebView(url: url)
                //Text("site web : \(url)")
            }
        }
    }
}
