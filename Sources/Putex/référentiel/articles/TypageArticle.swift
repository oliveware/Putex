//
//  TypageArticle.swift
//  Putex
//
//  Created by Herve Crespel on 14/11/2025.
//

import SwiftUI
import Taxionomy

public struct TypageArticle : View {
    var besoins: Taxionomy
    var contenants:Taxionomy
    @Binding var type : TypeArticle
    @Binding var modele: ModeleArticle

    @State var avecmodele = false
    
    public init(
        _ type:Binding<TypeArticle>, _ modele:Binding<ModeleArticle>,
        _ besoins: Taxionomy, _ contenants:Taxionomy
    ) {
        _type = type
        _modele = modele
        self.besoins = besoins
        self.contenants = contenants
        avecmodele = !modele.wrappedValue.isNaN
    }
    
    public var body: some View {
        VStack(alignment:.leading) {
            TypeArticleShow(type)
            if avecmodele {
                ModeleArticleView($modele, contenants)
            } else {
                Button("ajouter un modèle", action:{avecmodele = true})
            }
            
        }
    }
}

struct TypagePreview : View {
    var besoins = Taxionomy(taxionomie2)
    var contenants = Taxionomy()
    @State var type = TypeArticle()
    @State var modele = ModeleArticle()
    func done() {}
    
    var body : some View {
        TypageArticle($type, $modele, besoins, contenants)
            .frame(width:600, height:1000)
    }
}

#Preview {
    TypagePreview()
}
