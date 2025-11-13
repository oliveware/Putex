//
//  ModeleArticleView.swift
//  Putex
//
//  Created by Herve Crespel on 13/11/2025.
//

import SwiftUI
import Taxionomy


struct ModeleArticleView: View {
    var taxionomy:Taxionomy
    @Binding var modele: ModeleArticle
    @State var taxion = Taxion()
    @State var edition: Bool

    
    public init(_ modele:Binding<ModeleArticle>, _ taxionomie:Taxionomy) {
        _modele = modele
        taxionomy = taxionomie
        if modele.wrappedValue.contenant != nil {
            taxion = taxionomie.find(modele.wrappedValue.contenant!)
        }
        edition = modele.wrappedValue.isNaN
    }
    
    var body: some View {
        VStack {
            HStack {
                if edition {
                    ModeleArticleEditor($modele, {})
                } else {
                    Text(modele.show)
                }
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
    var taxionomy = Taxionomy(taxionomie2)
    @State var modele = ModeleArticle()
    func done() {}
    
    var body : some View {
        ModeleArticleView($modele, taxionomy)
            .frame(width:600, height:600)
    }
}

#Preview {
    ModelePreview()
}
