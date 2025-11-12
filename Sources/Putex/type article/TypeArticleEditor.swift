//
//  TypeArticleEditor.swift
//  Putex
//
//  Created by Herve Crespel on 09/11/2025.
//

import SwiftUI
import Taxionomy

public struct TypeArticleEditor : View {
    var taxionomy = Taxionomy(taxionomie2)
    @Binding var type: TypeArticle
    @State var taxion = Taxion()
    var done: () -> Void
    
    public init(_ type:Binding<TypeArticle>, _ done: @escaping () -> Void) {
        _type = type
        self.done = done
    }
    
    public var body : some View {
        VStack(alignment:.leading) {
            Text("type d'article")
                .font(.title)
                .padding()
            TaxionPicker($taxion, taxionomy, {type.id = taxion.id})

            OptionalString("description", $type.description)
            
            OptionalString("site web", $type.url)
            OptionalString("image", $type.imagurl)
                .padding(.bottom,20)
            
            OptionalString("sous-catégorie", $type.sub)
            
            
            Button("valider", action:{
                done()
            }).padding()
            
        }.padding()
        
    }
}

struct TypePreditor : View {
    @State var type = TypeArticle()
    func done() {}
    
    var body : some View {
        TypeArticleEditor($type, done)
    }
}

#Preview { TypePreditor().frame(width: 800, height:500) }
