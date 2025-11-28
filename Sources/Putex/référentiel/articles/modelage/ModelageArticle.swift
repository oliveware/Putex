//
//  TypageArticle.swift
//  Putex
//
//  Created by Herve Crespel on 14/11/2025.
//

import SwiftUI
import Taxionomy

public struct ModelageArticle : View {
    var fermetures: Taxionomy
    var contenants:Taxionomy
    var type:TypeArticle
    @Binding var modele: ModeleArticle

    @State var avecmodele : Bool
    
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
            
            if type.conditionné {
                ConditionnementView(Binding<Conditionnement>(
                    get: {modele.conditionnement ?? Conditionnement()},
                    set: {modele.conditionnement = $0.isNaN ? nil : $0}
                    
                ), contenants, fermetures, {})
            }
            
            if avecmodele {
                ModeleArticleEditor($modele, contenants, fermetures, {})
            } else {
                Button("ajouter un modèle", action:{avecmodele = true})
            }
            
        }
    }
}

struct ModelagePreview : View {
    var fermetures = Taxionomy()
    var contenants = Taxionomy()
    @State var type = TypeArticle()
    @State var modele = ModeleArticle()
    func done() {}
    
    var body : some View {
        ModelageArticle(type, $modele, fermetures, contenants)
          
    }
}

#Preview {
    ModelagePreview().padding()
}
