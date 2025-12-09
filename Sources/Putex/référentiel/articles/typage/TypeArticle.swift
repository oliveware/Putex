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
        full = taxion.full
        if label == "" { label = taxion.short }
    }
    
    var full: [String] = []
    
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
    
    var line: String {
        var string = label
        var fin = ""
        if full.count  > 0 {
            if full[0] != label {
                string = label + " ( " + full[0]
                fin = " )"
            }
            if let soustype = soustype {
                string = string + " - " + soustype.nom
            }
        }
        return string + fin
    }
    
    var cartouche: String {
        var string = line
        if full[1] != "" {
             string = line + "\n" + full[1]
        }
        if full[2] != "" {
             string = string + "\n" + full[2]
        }
        return string
    }
    
}


