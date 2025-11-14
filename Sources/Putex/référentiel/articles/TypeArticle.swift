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
    
    var description: String?
    var sub: String? // dans une taxionomie spécialisée
    var imagurl: String?
    var url: String?
    
    
    var isNaN:Bool {
        id == ""
    }
    
    var show : String {
       ""// Taxion(type).complet() + "\n" + cond.show
    }
}
