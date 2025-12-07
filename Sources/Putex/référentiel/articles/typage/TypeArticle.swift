//
//  TypeArticle.swift
//  Taxonomie
//
//  Created by Herve Crespel on 07/07/2025.
//
import Taxionomy

// un type d'article spécialise un taxion
// par exemple, une cerise peut être fraîche, séchée, congelée, à l'eau de vie
public struct TypeArticle: Codable, Identifiable {
    public var id : String = ""    // TID.id

    public init() {}
    mutating func change(_ taxion:Taxion) {
        id = taxion.id
        label = taxion.complet()
    }
    
    public var label: String = ""
    
    public var imagurl: String?
    public var url: String?
    
    var soustype: SousType?
    public var cadrage: Cadrage?
    var conditionné = false
    
    public var configurator: Configurator?
    
    var illustré : Bool {
        imagurl != nil || url != nil
    }
    
    var isNaN:Bool {
        id == "" || label == ""
    }
    
}


