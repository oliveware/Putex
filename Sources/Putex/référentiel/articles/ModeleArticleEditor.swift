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
    @State var contenant : Taxion
    @State var fermeture : Taxion
    @Binding var modele:ModeleArticle
    
    var done: () -> Void
    
    public init(_ modele:Binding<ModeleArticle>, _ contenants:Taxionomy, _ fermetures: Taxionomy, _ done: @escaping () -> Void) {
        self.fermetures = fermetures
        self.contenants = contenants
        _modele = modele
        if let contenant = modele.wrappedValue.contenant {
            self.contenant = contenants.find(contenant)
        } else {
            self.contenant = Taxion()
        }
        if let fermeture = modele.wrappedValue.fermeture {
            self.fermeture = fermetures.find(fermeture)
        } else {
            self.fermeture = Taxion()
        }
        self.done = done
    }
    @State private var conditionné = false
    var conditionnement: some View {
        VStack {
            if conditionné {
                HStack (alignment: .top){
                    Button(action:{
                        modele.conservation = nil
                        modele.contenant = nil
                        modele.fermeture = nil
                        conditionné = false
                    })
                    {Image(systemName: "delete.right")}
                    GroupBox("conditionnement") {
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
                        HStack {
                            if modele.contenant != nil {
                                Button(action:{modele.contenant = nil})
                                {Image(systemName: "delete.right")}
                            }
                            TaxionPicker($contenant, contenants, { modele.contenant = contenant.id })
                        }
                        if modele.contenant != nil {
                            // fermeture
                            HStack {
                                if modele.fermeture != nil {
                                    Button(action:{modele.fermeture = nil})
                                    {Image(systemName: "delete.right")}
                                }
                                TaxionPicker($fermeture, fermetures, { modele.fermeture = fermeture.id })
                            }
                        }
                    }
                }
            } else {
                Button(" ajouter un conditionnement", action:{conditionné = true})
            }
        }
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
            
            conditionnement
            
        }.padding()
    }
}

struct ModelePreditor : View {
    var fermetures = Taxionomy()
    var contenants = Taxionomy()
    @State var modele = ModeleArticle()
    func done() {}
    
    var body : some View {
        ModeleArticleEditor($modele, fermetures, contenants, done)
    }
}

#Preview { ModelePreditor().frame(width: 800, height:500) }
