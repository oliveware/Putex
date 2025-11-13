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
    
    var done: () -> Void
    
    public init(_ type:Binding<TypeArticle>, _ done: @escaping () -> Void) {
        _type = type
        self.done = done
    }
    
    public var body : some View {
        VStack(alignment:.leading) {
            

            HStack {
                OptionalString("description", $type.description)
                OptionalString("sous-catégorie", $type.sub)
            }
            .padding(.bottom,20)
            
           
            OptionUrl("image", $type.imagurl)
                .padding(.bottom,20)
            
            OptionUrl("site web", $type.url)
            
            
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
