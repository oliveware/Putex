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
        taxiondata = taxion.full
        if label == "" { label = taxion.short }
    }
    
    var taxiondata: [String] = []
    
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
        if taxiondata.count  > 0 {
            if taxiondata[0] != label {
                string = label + " ( " + taxiondata[0]
                fin = " )"
            }
            if let soustype = soustype {
                string = string + " - " + soustype.nom
            }
        }
        return string + fin
    }
    
    var taxiondetails: String {
        switch taxiondata.count {
        case 2: return taxiondata[1]
        case 3: return taxiondata[1] + "\n" + taxiondata[2]
        default: return ""
        }
    }
    
}


