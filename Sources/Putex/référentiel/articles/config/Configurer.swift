//
//  Configurer.swift
//  Putex
//
//  Created by Herve Crespel on 30/11/2025.
//

import SwiftUI

struct ConfiguratorMaker: View {
    @Binding var config:Configurator
    @State private var nom:String = ""
    @State private var ajout = false
    @State private var delete = false
    @FocusState private var focused : Bool
    
    init(_ config:Binding<Configurator>){
        _config = config
    }
    
    var body: some View {
        VStack {
            if !config.isNaN {
                GroupBox("configurator") {
                    Form {
                        ForEach($config.config.cars) {
                            car in
                            HStack {
                                TextField(car.wrappedValue.nom, text:car.valeur)
                                Spacer()
                                if delete {
                                    Button(action:{
                                        config.delete (car.wrappedValue)
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
                        config.add(nom)
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
                    if !config.isNaN {
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
    @State var config = configsample
    
    func haut() -> CGFloat {
        let nbl = config.config.cars.count
        return CGFloat( 200 + nbl * 20)
    }

    var body: some View {
        HStack(alignment:.top) {
            VStack {
                Text("créer").padding()
                ConfiguratorMaker($config).padding()
            }
            VStack {
                Text("utiliser").padding()
                ConfigurationFiller($config.config).padding()
            }
        }.frame(width:600, height:400)
        
    }
}

    
#Preview {
    ConfigPreview()
}
