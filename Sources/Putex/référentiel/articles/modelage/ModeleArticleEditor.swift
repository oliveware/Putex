//
//  ModeleArticleEditor.swift
//  Putex
//
//  Created by Herve Crespel on 13/11/2025.
//

import SwiftUI
import Taxionomy

struct ModeleArticleEditor : View {
    var fermetures: Taxionomy
    var contenants: Taxionomy

    @Binding var modele:ModeleArticle
    
    var done: () -> Void
    
    public init(_ modele:Binding<ModeleArticle>, _ contenants:Taxionomy, _ fermetures: Taxionomy, _ done: @escaping () -> Void) {
        self.fermetures = fermetures
        self.contenants = contenants
        _modele = modele
        self.done = done
    }
   
    var body: some View {
        VStack(alignment:.leading) {
            TextField("description", text:$modele.description)
            TextField("marque", text:$modele.marque)
            .padding(.bottom,20)
           
            // illustration/
            OptionUrl("image", $modele.imagurl)
                .padding(.bottom,20)
            
            OptionUrl("site web", $modele.url)
                .padding(.bottom,20)
           
            HStack (alignment: .top){
                if modele.conditionnement == nil {
                    Button(" préciser le conditionnement", action:{ modele.conditionnement = Conditionnement()})
                } else {
                    ConditionnementView(Binding<Conditionnement> (
                        get: { modele.conditionnement ?? Conditionnement()},
                        set: { modele.conditionnement = $0.isNaN ? nil : $0}
                    ), fermetures, contenants, {})
                }
                if let cond = modele.conditionnement {
                    Button(action:{
                        modele.conditionnement = nil
                    })
                    {Image(systemName: "delete.right")}.padding(.top, 20)
                }
                }
            
        }.padding()
    }
}

struct ModelePreditor : View {
    var fermetures = Taxionomy(["une fermeture"])
    var contenants = Taxionomy(["un contenant"])
    @State var modele = ModeleArticle()
    func done() {}
    
    var body : some View {
        ModeleArticleEditor($modele, fermetures, contenants, done)
    }
}

#Preview { ModelePreditor().frame(width: 800, height:500) }
