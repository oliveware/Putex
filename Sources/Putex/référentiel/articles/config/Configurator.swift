//
//  Untitled.swift
//  Putex
//
//  Created by Herve Crespel on 15/11/2025.
//
public struct Configurator: Codable {

    var cars : [Caracteristique] = []
    
    init() {}
    init(_ config:Config) {
        cars = config.cars
    }
    
    var isNaN : Bool {cars.count == 0}
    
    mutating func add(_ nom:String) {
        cars.append(Caracteristique(nom))
    }
    mutating func delete(_ sup:Caracteristique) {
        var new: [Caracteristique] = []
        for car in cars {
            if car.id != sup.id { new.append(car) }
        }
        cars = new
    }
}


public struct Config: Codable, Equatable {
   
    var cars : [Caracteristique] = []
    
    init() {}
    init(_ configurator:Configurator) {
        cars = configurator.cars
    }
    
    var isNaN : Bool {cars.count == 0}
    
    mutating func set(_ nom:String, _ value:String) {
        for index in 0..<cars.count {
            if cars[index].nom == nom {
                cars[index].set(value)
            }
        }
    }
  
}

struct Caracteristique: Codable, Identifiable, Equatable {
    var id: String {nom}
    var nom: String = ""
    var valeur:String = ""
    
    init(_ nom:String) { self.nom = nom }
    
    mutating func set(_ value:String) {
        valeur = value
    }
}
