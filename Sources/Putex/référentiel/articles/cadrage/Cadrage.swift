//
//  Cadrage.swift
//  Putex
//
//  Created by Herve Crespel on 30/11/2025.
//

public struct Cadrage: Codable {
    var options: [Option] = []
    var modele: Configurator?
    
    var isNaN: Bool {options.count == 0}
    var configurable: Bool {
        if let configurator = modele {
            return !configurator.isNaN
        } else {
            return false
        }
    }
    
    struct Option:Codable, Identifiable {
        var id:String {nom}
        var nom = ""
        var config:Config?
        
        init(_ nom:String) {
            self.nom = nom
        }
    }
    
    mutating func configure(_ id:String, _ config:Config) {
        for index in 0..<options.count {
            if options[index].id == id {
                options[index].config = config
            }
        }
    }
    
    func find(_ nom:String) -> Option {
        var found = Option("")
        for option in options {
            if option.nom == nom {
                found = option
            }
        }
        return found
    }
    
    mutating func add(_ nom:String) {
        options.append(Option(nom))
    }
    
    mutating func delete(_ sup:Option) {
        var new: [Option] = []
        for option in options {
            if option.id != sup.id { new.append(option) }
        }
        options = new
    }
}
