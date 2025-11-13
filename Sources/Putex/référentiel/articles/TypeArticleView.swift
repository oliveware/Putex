//
//  TypeArticleView.swift
//  Putex
//
//  Created by Herve Crespel on 12/11/2025.
//

import SwiftUI
import Taxionomy
import WebKit

struct TypeArticleView: View {
    var taxionomy:Taxionomy
    @Binding var type: TypeArticle
    @State var taxion = Taxion()
    @State var edition: Bool

    
    public init(_ type:Binding<TypeArticle>, _ taxionomie:Taxionomy) {
        _type = type
        taxionomy = taxionomie
        taxion = taxionomie.find(type.id)
        edition = type.wrappedValue.isNaN
    }
    
    var body: some View {
        VStack {
            Text("type d'article")
                .font(.title)
                .padding()
            TaxionPicker($taxion, taxionomy, {type.id = taxion.id})
           
            if !type.isNaN {
                HStack {
                    if edition {
                        TypeArticleEditor($type, {})
                    } else {
                        TypeArticleShow(type, taxionomy.find(type.id).complet())
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
}
// https://www.map24.com/wp-content/uploads/2023/04/Sharwil.jpg
// http://192.168.1.41
// https://apple.com

struct TypePreview : View {
    var taxionomy = Taxionomy(taxionomie2)
    @State var type = TypeArticle()
    func done() {}
    
    var body : some View {
        TypeArticleView($type, taxionomy)
            .frame(width:600, height:600)
    }
}

#Preview {
    TypePreview()
}
