//
//  DetailArticle.swift
//  Semantex
//
//  Created by Herve Crespel on 19/06/2025.
//

struct OptionArticle: Codable, Identifiable {
    
    
    var id:String {nom}
    var nom = ""
    var config:Config?
    
    init(_ nom:String) {
        self.nom = nom
    }
    
    var configurator: Configurator {
        if let config = config {
            return Configurator(config)
        } else {
            return Configurator()
        }
    }
    
    mutating func configure(_ config:Config) {
        self.config = config
    }
   
    var isNaN : Bool { nom == "" && config == nil}
   
}


