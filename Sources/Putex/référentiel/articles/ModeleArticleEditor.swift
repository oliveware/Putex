//
//  ModeleArticleEditor.swift
//  Putex
//
//  Created by Herve Crespel on 13/11/2025.
//

import SwiftUI
import Taxionomy

struct ModeleArticleEditor : View {
    var taxionomy = Taxionomy(taxionomie2)
    @State var taxion = Taxion()
    @Binding var modele:ModeleArticle
    
    var done: () -> Void
    
    public init(_ modele:Binding<ModeleArticle>, _ done: @escaping () -> Void) {
        _modele = modele
        self.done = done
    }
    
    var body: some View {
        VStack(alignment:.leading) {
            
            
            HStack {
                TextField("description", text:$modele.description)
                TextField("marque", text:$modele.marque)
            }
            .padding(.bottom,20)
            
            // conservation
            if modele.conservation == nil {
                Button("ajouter conservation", action:{modele.conservation = Conservation()})
            } else {
                HStack {
                    Button(action:{modele.conservation = nil})
                    {Image(systemName: "delete.right")}
                    ConservationView(Binding<Conservation> (
                        get: { modele.conservation ?? Conservation()},
                        set: { modele.conservation = $0}
                    ))
                }
            }
            // contenant
            TaxionPicker($taxion, taxionomy, { modele.contenant = taxion.id })
           
            // illustration/
            OptionUrl("image", $modele.imagurl)
                .padding(.bottom,20)
            
            OptionUrl("site web", $modele.url)
            
            
            HStack {
                Spacer()
                Button("valider", action:{ done() }).padding()
                Spacer()
            }
            
        }.padding()
    }
}

struct ModelePreditor : View {
    @State var modele = ModeleArticle()
    func done() {}
    
    var body : some View {
        ModeleArticleEditor($modele, done)
    }
}

#Preview { ModelePreditor().frame(width: 800, height:500) }
