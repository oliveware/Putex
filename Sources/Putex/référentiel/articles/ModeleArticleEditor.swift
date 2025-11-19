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
            self.contenant = contenants.find(contenant.id)
        } else {
            self.contenant = Taxion()
        }
        if let fermeture = modele.wrappedValue.fermeture {
            self.fermeture = fermetures.find(fermeture.id)
        } else {
            self.fermeture = Taxion()
        }
        self.done = done
        conditionné = modele.wrappedValue.conditionné
    }
    @State private var conditionné : Bool
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
                    {Image(systemName: "delete.right")}.padding(.top, 20)
                    GroupBox("conditionnement") {
                        // conservation
                        if modele.conservation == nil {
                            Button("mode de conservation", action:{modele.conservation = Conservation()})
                        } else {
                            HStack {
                              //  if !modele.conservation!.isNaN {
                                    Button(action:{modele.conservation = nil})
                                    {Image(systemName: "delete.right")}
                               // }
                                ConservationView(Binding<Conservation> (
                                    get: { modele.conservation ?? Conservation()},
                                    set: { modele.conservation = $0.isNaN ? nil : $0}
                                ))
                            }.frame(width:350, alignment:.leading)
                        }
                        // contenant
                        if modele.contenant == nil {
                            TaxionPicker($contenant, contenants, { modele.contenant = ModeleArticle.Idnom(contenant) })
                        } else {
                            if modele.contenant!.nom == "" {
                                TaxionPicker($contenant, contenants, { modele.contenant = ModeleArticle.Idnom(contenant) })
                            } else {
                                HStack {
                                    Button(action:{modele.contenant = nil})
                                    {Image(systemName: "delete.right")}
                                    Text(modele.contenant!.nom)
                                    Spacer()
                                    Button(action:{modele.contenant!.nom = ""})
                                    {Image(systemName: "pencil")}
                                }.frame(width:350, alignment:.leading)
                            }
                        }
                        // fermeture
                        
                        if modele.fermeture == nil {
                            TaxionPicker($fermeture, fermetures, { modele.fermeture = ModeleArticle.Idnom(fermeture) })
                        } else {
                            if modele.fermeture!.nom == "" {
                                TaxionPicker($fermeture, fermetures, { modele.fermeture = ModeleArticle.Idnom(fermeture) })
                            } else {
                                HStack {
                                    Button(action:{modele.fermeture = nil})
                                    {Image(systemName: "delete.right")}
                                    Text(modele.fermeture!.nom)
                                    Spacer()
                                    Button(action:{modele.fermeture!.nom = ""})
                                    {Image(systemName: "pencil")}
                                }.frame(width:350, alignment:.leading)
                            }
                        }
                    }
                }
            } else {
                Button(" préciser le conditionnement", action:{conditionné = true})
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
                .padding(.bottom,20)
            
            conditionnement
            
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
