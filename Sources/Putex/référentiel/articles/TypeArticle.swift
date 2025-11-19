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
        show = taxion.complet()
    }
    
    public var show: String = ""
    var sub: String? // dans une taxionomie spécialisée
    var imagurl: String?
    var url: String?
    
    var config: Configurateur?
    
    
    var isNaN:Bool {
        id == "" || show == ""
    }
    
}
