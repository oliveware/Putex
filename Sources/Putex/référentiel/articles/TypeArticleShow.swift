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
    var taxion:String
    
    init(_ type:TypeArticle, _ taxion:String) {
        self.type = type
        self.taxion = taxion
    }
    
    public var body : some View {
        VStack(alignment:.leading) {
            Text("type d'article : \(taxion)")
                .font(.title)
                .padding()
            
            if let description = type.description {
                Text("description : \(description)")
            }
            
            
        }
    }
}
