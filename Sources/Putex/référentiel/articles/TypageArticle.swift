//
//  TypageArticle.swift
//  Putex
//
//  Created by Herve Crespel on 14/11/2025.
//

import SwiftUI
import Taxionomy

public struct TypageArticle : View {
    var fermetures: Taxionomy
    var contenants:Taxionomy
    var type:TypeArticle
    @Binding var modele: ModeleArticle

    @State var avecmodele = false
    
    public init(
        _ type:TypeArticle, _ modele:Binding<ModeleArticle>,
        _ fermetures: Taxionomy, _ contenants:Taxionomy
    ) {
        self.type = type
        _modele = modele
        self.fermetures = fermetures
        self.contenants = contenants
        avecmodele = !modele.wrappedValue.isNaN
    }
    
    public var body: some View {
        VStack(alignment:.leading) {
            
                TypeArticleShow(type)
                if avecmodele {
                    ModeleArticleEditor($modele, contenants, fermetures, {})
                } else {
                    Button("ajouter un modèle", action:{avecmodele = true})
                }
            
        }
    }
}

struct TypagePreview : View {
    var fermetures = Taxionomy()
    var contenants = Taxionomy()
    @State var type = TypeArticle()
    @State var modele = ModeleArticle()
    func done() {}
    
    var body : some View {
        TypageArticle(type, $modele, fermetures, contenants)
            .frame(width:600, height:1000)
    }
}

#Preview {
    TypagePreview()
}
