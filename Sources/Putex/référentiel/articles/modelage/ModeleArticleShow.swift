//
//  ModeleArticleView.swift
//  Putex
//
//  Created by Herve Crespel on 13/11/2025.
//

import SwiftUI


struct ModeleArticleShow: View {
    var type : TypeArticle
    var modele: ModeleArticle

    public init(_ type:TypeArticle,_ modele:ModeleArticle) {
        self.type = type
        self.modele = modele
    }
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text(type.line)
                    Text(type.taxiondetails)
                    Text(modele.show)
                }
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
            } else {
                if let webpage = type.url, let url = URL(string: webpage) {
                    WebView(url: url)
                }
            }
        }
    }
}
// https://www.map24.com/wp-content/uploads/2023/04/Sharwil.jpg
// http://192.168.1.41
// https://apple.com

struct ModelePreview : View {
    var type = TypeArticle()
    var modele = ModeleArticle()
    func done() {}
    
    var body : some View {
        ModeleArticleShow(type, modele)
            .frame(width:600, height:600)
    }
}

#Preview {
    ModelePreview()
}

