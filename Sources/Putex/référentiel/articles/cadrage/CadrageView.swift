//
//  CadrageView.swift
//  Putex
//
//  Created by Herve Crespel on 01/12/2025.
//

import SwiftUI

struct CadrageView : View {
    @Binding var cadrage: Cadrage
    @Binding var configurator:Configurator

    @State private var nom: String = ""
    @State var delete = false
    @State var ajout = false
    @FocusState private var focused : Bool
    
    @State var selected:OptionArticle?
    @State var configuration = Config()
    @State var configurable : Bool
    
    func select(_ option:OptionArticle) {
        selected = option
        if let config  = option.config {
            configuration = config
        } else {
            configuration = Config(configurator)
        }
    }
    
    init(_ cadrage:Binding<Cadrage>, _ configurator:Binding<Configurator>) {
        _cadrage = cadrage
        _configurator = configurator
        configurable = cadrage.wrappedValue.configurable || !configurator.wrappedValue.isNaN
    }
    
    var body: some View {
        GroupBox("Options possibles") {
            VStack {
                if !cadrage.isNaN {
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
                                if configurable {
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
            
            /*  if configurator.isNaN {
             Button("configurer les options", action:{configurator = Configurator()})
             } else {
             if let option = selected {
             Text("configuration de l'option \(option.nom )")
             ConfigurationFiller($configuration)
             .onChange(of : configuration, {cadrage.configure(option.id, configuration)})
             }
             }*/
        }
    }
}

struct CadragePreview : View {
    @State var cadrage = Cadrage()
    @State var configurator = Configurator()
    
    var body: some View {
        CadrageView($cadrage, $configurator).frame(height: 300)
    }
}
#Preview {
    CadragePreview()
}
