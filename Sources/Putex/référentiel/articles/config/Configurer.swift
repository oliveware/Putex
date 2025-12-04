//
//  Configurer.swift
//  Putex
//
//  Created by Herve Crespel on 30/11/2025.
//

import SwiftUI

struct ConfiguratorMaker: View {
    @Binding var configurator:Configurator
    @State private var nom:String = ""
    @State private var ajout = false
    @State private var delete = false
    @FocusState private var focused : Bool
    
    init(_ config:Binding<Configurator>){
        _configurator = config
    }
    
    var body: some View {
        VStack {
            if !configurator.isNaN {
                GroupBox("Configurateur") {
                    Form {
                        ForEach($configurator.cars) {
                            car in
                            HStack {
                                TextField(car.wrappedValue.nom, text:car.valeur)
                                Spacer()
                                if delete {
                                    Button(action:{
                                        configurator.delete (car.wrappedValue)
                                        delete = false
                                    })
                                    {Image(systemName: "trash")}
                                }
                                
                            }.frame(minWidth: 200)
                        }
                    }.padding(2)
                }
            }

            if ajout {
                HStack {
                    TextField("", text:$nom).focused($focused)
                    Button(action:{
                        configurator.add(nom)
                        nom = ""
                        ajout = false
                    })
                    {Image(systemName: "checkmark")}
                        .disabled(nom.count < 5)
                }
            } else {
                HStack {
                    Button("ajouter une caractéristique", action:{
                        ajout = true
                        focused = true
                    })
                    Spacer()
                    if !configurator.isNaN {
                        Button(action:{ delete.toggle() })
                        {Image(systemName: "minus")}
                    }
                }
            }
            
        }.padding()
    }
}

struct ConfigurationFiller: View {
    @Binding var config:Config
    @State private var nom:String = ""
    @State private var ajout = false
    @State private var delete = false
    @FocusState private var focused : Bool
    
    init(_ config:Binding<Config>){
        _config = config
    }
    
    var body: some View {
        VStack {
            if config.cars.count > 0 {
                GroupBox("configuration") {
                    Form {
                        ForEach($config.cars) {
                            car in
                                TextField(car.wrappedValue.nom, text:car.valeur)
                            .frame(minWidth: 200)
                        }
                    }.padding(2)
                }
            }
        }.padding()
    }
}

var configsample = Configurator()

struct ConfigPreview : View {
    @State var configurator : Configurator
    @State var config : Config
    
    init() {
        configurator = Configurator()
        config = Config()
    }
    
    func haut() -> CGFloat {
        let nbl = configurator.cars.count
        return CGFloat( 200 + nbl * 20)
    }

    var body: some View {
        HStack(alignment:.top) {
            VStack {
                Text("créer").padding()
                ConfiguratorMaker($configurator).padding()
                    .onChange(of: configurator.cars, {config = Config(configurator)})
            }
            VStack {
                Text("utiliser").padding()
                ConfigurationFiller($config).padding()
                    .onChange(of: config.cars, {configurator = Configurator(config)})
            }
        }.frame(width:600, height:400)
        
    }
}

    
#Preview {
    ConfigPreview()
}
