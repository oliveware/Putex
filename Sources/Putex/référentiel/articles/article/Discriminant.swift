//
//  Discriminant.swift
//  Semantex
//
//  Created by Herve Crespel on 19/06/2025.
//

var nourriture :[String:Discriminant?] =
[ "café" : nil,
  "thé" : nil
]


struct Discriminant: Codable {
   
    var critères:[String:Caractéristique] = [:]
    
    struct Caractéristique: Codable {
        enum Kind: String, Codable {
            case longueur = "longueur"
            case largeur = "largeur"
            case hauteur = "hauteur"
            case poids = "poids"
            case autre = "autre"
        }
        var name:String
        var value:String
        
        init (_ kind:Kind, _ v:String, _ nom:String = "") {
            name = kind == .autre ? nom : kind.rawValue
            value = v
        }
    }
}
