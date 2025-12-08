//
//  DetailArticle.swift
//  Semantex
//
//  Created by Herve Crespel on 19/06/2025.
//

struct OptionArticle: Codable, Oxet {
    static var selector: String = "option"
    
    static var warning: String = ""

    var id:String {label}
    var label = ""
    var config:Config?
    
    init(_ nom:String) {
        label = nom
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
   
    var isNaN : Bool { label == "" && config == nil}
   
}


