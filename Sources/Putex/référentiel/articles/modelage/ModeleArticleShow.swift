//
//  ModeleArticleView.swift
//  Putex
//
//  Created by Herve Crespel on 13/11/2025.
//

import SwiftUI


struct ModeleArticleShow: View {

    var modele: ModeleArticle

    public init(_ modele:ModeleArticle) {
        self.modele = modele
    }
    
    var body: some View {
        VStack {
            HStack {
                Text(modele.show)
                
                if let image = modele.imagurl, let url = URL(string: image) {
                    WebPicture(url)
                        .frame(width:200, height:200)
                }
            }
            if let webpage = modele.url, let url = URL(string: webpage) {
                WebView(url: url)
                //Text("site web : \(url)")
            }
        }
    }
}
// https://www.map24.com/wp-content/uploads/2023/04/Sharwil.jpg
// http://192.168.1.41
// https://apple.com

struct ModelePreview : View {
    @State var modele = ModeleArticle()
    func done() {}
    
    var body : some View {
        ModeleArticleShow(modele)
            .frame(width:600, height:600)
    }
}

#Preview {
    ModelePreview()
}

