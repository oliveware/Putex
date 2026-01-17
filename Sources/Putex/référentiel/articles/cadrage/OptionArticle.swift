//
//  OptionArticle.swift
//  Semantex
//
//  Created by Herve Crespel on 19/06/2025.
//

public protocol Vendable {
    var label: String {get}
    var config:Config {get}
}

struct OptionArticle: Codable, Oxet {
    static var selector: String = "option"
    
    static var warning: String = ""

    var id:String {label}
    var label = ""
    var config:Config?
    
    init(_ nom:String) {
        label = nom
    }
    
    init<T:Vendable>(_ ext:T) {
        label = ext.label
        config = ext.config
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


