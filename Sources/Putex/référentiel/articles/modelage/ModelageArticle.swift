//
//  TypageArticle.swift
//  Putex
//
//  Created by Herve Crespel on 14/11/2025.
//

import SwiftUI
import Taxionomy

public struct ModelageArticle : View {
    
    @Binding var modele: ModeleArticle
    var type = TypeArticle()
    @State var edition : Bool
    
    public init(_ type:TypeArticle,_ modele:Binding<ModeleArticle>) {
        self.type = type
        _modele = modele
        edition = modele.wrappedValue.isNaN
    }
    
    public var body: some View {
        VStack(alignment:.leading) {
            
            Text(type.cartouche)
            
            HStack {
                if edition {
                    ModeleArticleEditor(type, $modele, {})
                    Button(action: {edition = false})
                    {Image(systemName: "checkmark")}
                } else {
                    ModeleArticleShow(type, modele)
                    Button(action: {edition = true})
                    {Image(systemName: "pencil")}
                }
            }
            
        }
    }
}

struct ModelagePreview : View {

    @State var type = TypeArticle()
    @State var modele = ModeleArticle()
    func done() {}
    
    var body : some View {
        ModelageArticle(type, $modele).frame(width:400, height:300)
          
    }
}

#Preview {
    ModelagePreview().padding()
}
