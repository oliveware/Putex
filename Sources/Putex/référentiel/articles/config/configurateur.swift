//
//  Untitled.swift
//  Putex
//
//  Created by Herve Crespel on 15/11/2025.
//
struct Configurateur: Codable {
    struct Caracteristique: Codable, Identifiable {
        var id: String {nom}
        var nom: String = ""
        var valeur:String = ""
        init(_ nom:String) { self.nom = nom }
    }
    var cars : [Caracteristique] = []
    
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


