//
//  TypageArticleShow.swift
//  Putex
//
//  Created by Herve Crespel on 14/11/2025.
//

import SwiftUI
import Taxionomy

struct TypageArticleShow: View {
    var type: TypeArticle
    var modele:ModeleArticle
    
    public var body : some View {
        VStack(alignment:.leading) {
            HStack {
               
                Text("type : \(type.show)")
                   
                
                if let image = modele.imagurl, let url = URL(string: image) {
                    WebPicture(url)
                        .frame(width:200, height:200)
                } else {
                    if let image = type.imagurl, let url = URL(string: image) {
                        WebPicture(url)
                            .frame(width:200, height:200)
                    }
                }
            }
            if let webpage = modele.url, let url = URL(string: webpage) {
                WebView(url: url)
                //Text("site web : \(url)")
            } else {
                if let image = type.url, let url = URL(string: image) {
                    WebPicture(url)
                        .frame(width:200, height:200)
                }
            }
        }
    }
}
