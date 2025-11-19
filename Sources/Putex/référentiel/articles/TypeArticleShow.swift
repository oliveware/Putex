//
//  TypeArticleShow.swift
//  Putex
//
//  Created by Herve Crespel on 12/11/2025.
//

import SwiftUI

public struct TypeArticleShow: View {
    var type: TypeArticle
    var full : Bool
    
    public init(_ type:TypeArticle, _ short: Bool = true) {
        self.type = type
        full = !short
    }
    
    var short : some View {
        VStack {
            Text("type : \(type.show)")
            if let sub = type.sub {
                Text("sous-catégorie : \(sub)")
            }
        }
    }
    
    public var body : some View {
        if full {
            VStack(alignment:.leading) {
                HStack {
                    short
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
        } else {
            short
        }
    }
}
