//
//  CadrageView.swift
//  Putex
//
//  Created by Herve Crespel on 01/12/2025.
//

import SwiftUI

struct CadrageView : View {
    @Binding var cadrage: Cadrage
    @State private var nom: String = ""
    @State var delete = false
    @State var ajout: Bool
    @FocusState private var focused : Bool
    
    @State var selected:Cadrage.Option?
    @State var configuration = Config()
    
    func select(_ option:Cadrage.Option) {
        selected = option
        if let config  = option.config {
            configuration = config
        } else {
            if let configurator = cadrage.modele {
                configuration = Config(configurator)
            } else {
                configuration = Config()
            }
        }
    }
    
    init(_ cadrage:Binding<Cadrage>) {
        _cadrage = cadrage
        ajout = cadrage.wrappedValue.isNaN
    }
    
    var body: some View {
        HStack {
            VStack {
                if !cadrage.isNaN {
                    Text("options possibles").font(.title3)
                    Form {
                        ForEach($cadrage.options) {
                            option in
                            HStack {
                                if delete {
                                    Button(action:{
                                        cadrage.delete (option.wrappedValue)
                                        delete = false
                                    })
                                    {Image(systemName: "trash")}
                                } else {
                                    Text("     ")
                                }
                                
                                Text(option.wrappedValue.nom)
                                Spacer()
                                if cadrage.configurable {
                                    Button(action:{select( option.wrappedValue)})
                                    {Image(systemName: "arrow.right")}
                                }
                                
                               
                                
                            }.frame(minWidth: 100)
                        }
                    }.padding(2)
                
                }
                if ajout {
                    HStack {
                        TextField("", text:$nom).focused($focused)
                        Button(action:{
                            cadrage.add(nom)
                            nom = ""
                            ajout = false
                        })
                        {Image(systemName: "checkmark")}
                            .disabled(nom.count < 5)
                    }
                } else {
                    HStack {
                        if !cadrage.isNaN {
                            Button(action:{ delete.toggle() })
                            {Image(systemName: "minus")}
                        }
                        Spacer()
                        Button("ajouter une option", action:{
                            ajout = true
                            focused = true
                        })
                        Spacer()
                        
                    }
                }
            }
   
            if let configurator = cadrage.modele {
                VStack {
                    if let option = selected {
                        Text("configuration de l'option \(selected?.nom ?? "")")
                        ConfigurationFiller($configuration)
                            .onChange(of : configuration, {cadrage.configure(option.id, configuration)})
                    } else {
                        Text("configurateur des options")
                        ConfiguratorMaker(Binding<Configurator>(
                            get : {configurator},
                            set : {cadrage.modele = $0}
                        ))
                    }
                }
            } else {
                Button("configurer les options", action:{cadrage.modele = Configurator()})
            }
        }
    }
}

struct CadragePreview : View {
    @State var cadrage = Cadrage()
    
    var body: some View {
        CadrageView($cadrage).frame(height: 300)
    }
}
#Preview {
    CadragePreview()
}
