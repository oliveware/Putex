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
    var ref: Articleref
    @Binding var type: TypeArticle
    @State var taxion = Taxion()
    @State var edition: Bool
    
    public init(_ type:Binding<TypeArticle>, _ ref: Articleref) {
        _type = type
        self.ref = ref
        taxion = ref.besoins.find(type.id)
        edition = type.wrappedValue.isNaN
    }
    
    var body: some View {
        VStack {
            Text("type d'article")
                .font(.title)
                .padding()
            TaxionPicker($taxion, ref.besoins, {type = ref.type(taxion.id)})
            HStack {
                if edition {
                    TypeArticleEditor($type, {})
                } else {
                    TypeArticleShow(type, ref.besoins.find(type.id).complet())
                }
                
                if let image = type.imagurl, let url = URL(string: image) {
                    WebPicture(url)
                }
            }
            if let webpage = type.url, let url = URL(string: webpage) {
                WebView(url: url)
                //Text("site web : \(url)")
            }
        }
    }
}
