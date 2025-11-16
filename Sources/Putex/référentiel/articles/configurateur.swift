//
//  Untitled.swift
//  Putex
//
//  Created by Herve Crespel on 15/11/2025.
//
struct Configurateur: Codable {
    struct Caractere: Codable, Identifiable {
        var id: String {nom}
        var nom: String = ""
        var valeur:String = ""
        init(_ nom:String) { self.nom = nom }
    }
    var cars : [Caractere] = []
    
    mutating func add(_ nom:String) {
        cars.append(Caractere(nom))
    }
    mutating func delete(_ sup:Caractere) {
        var new: [Caractere] = []
        for car in cars {
            if car.id != sup.id { new.append(car) }
        }
        cars = new
    }
}

import SwiftUI

struct Configurer: View {
    @Binding var config:Configurateur
    var modele = false
    @State private var nom:String = ""
    @State private var ajout = false
    @State private var delete = false
    @FocusState private var focused : Bool
    
    init(_ config:Binding<Configurateur>, _ mode:Bool){
        _config = config
        modele = mode
    }
    
    var body: some View {
        VStack {
            if config.cars.count > 0 {
                GroupBox("configurateur") {
                    Form {
                        ForEach($config.cars) {
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
            if modele {
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
                        if config.cars.count > 0 {
                            Button(action:{ delete.toggle() })
                            {Image(systemName: "minus")}
                        }
                    }
                }
            }
        }.padding()
    }
}

var configsample = Configurateur()

struct ConfigPreview : View {
    @State var config = configsample
    
    func haut() -> CGFloat {
        var nbl = config.cars.count
        return CGFloat( 200 + nbl * 20)
    }

    var body: some View {
        HStack(alignment:.top) {
            VStack {
                Text("créer").padding()
                Configurer($config, true).padding()
            }
            VStack {
                Text("utiliser").padding()
                Configurer($config, false).padding()
            }
        }.frame(width:600, height:400)
        
    }
}

    
#Preview {
    ConfigPreview()
}
