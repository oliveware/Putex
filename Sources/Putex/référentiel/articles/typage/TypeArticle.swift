//
//  Produit.swift
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
    var cadrage: Cadrage?
    var conditionné = false
    
    var config: Configurator?
    
    
    var isNaN:Bool {
        id == "" || show == ""
    }
    
}


