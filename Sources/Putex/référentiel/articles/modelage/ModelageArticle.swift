//
//  TypageArticle.swift
//  Putex
//
//  Created by Herve Crespel on 14/11/2025.
//

import SwiftUI
import Taxionomy

public struct ModelageArticle : View {
    var type:TypeArticle
    var nomenclatures:Nomenclatures
    @Binding var modele: ModeleArticle

    @State var avecmodele : Bool
    
    public init(
        _ type:TypeArticle,
        _ modele:Binding<ModeleArticle>,
        _ nomenclatures: Nomenclatures
    ) {
        self.nomenclatures = nomenclatures
        self.type = type
        _modele = modele
        avecmodele = !modele.wrappedValue.isNaN
    }
    
    public var body: some View {
        VStack(alignment:.leading) {
            
            TypeArticleShow(type)
            
            if avecmodele {
                if type.conditionné {
                    if modele.conditionnement == nil {
                        Button(" préciser le conditionnement", action:{ modele.conditionnement = Conditionnement()})
                    } else {
                        HStack {
                            ConditionnementView(Binding<Conditionnement>(
                                get: {modele.conditionnement ?? Conditionnement()},
                                set: {modele.conditionnement = $0.isNaN ? nil : $0}
                                
                            ), nomenclatures, {})
                            
                            Button(action:{
                                modele.conditionnement = nil
                            })
                            {Image(systemName: "delete.right")}.padding(.top, 20)
                        }
                    }
                }
                if let cadrage = type.cadrage {
                  //  ConfigurationFiller(cadrage.configurer)
                }
           
                ModeleArticleEditor($modele, {})
            } else {
                Button("ajouter un modèle", action:{avecmodele = true})
            }
            
        }
    }
}

struct ModelagePreview : View {
    var nomenclatures = Nomenclatures()
    @State var type = TypeArticle()
    @State var modele = ModeleArticle()
    func done() {}
    
    var body : some View {
        ModelageArticle(type, $modele, nomenclatures).frame(width:400, height:300)
          
    }
}

#Preview {
    ModelagePreview().padding()
}
