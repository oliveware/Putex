//
//  ModeleArticle.swift
//  Putex
//
//  Created by Herve Crespel on 09/11/2025.
//


// un type d'article spécialise un taxion
// par exemple, une cerise peut être fraîche, séchée, congelée, à l'eau de vie
public struct ModeleArticle: Codable {

    var description: String = ""
    var marque: String = ""
    var imagurl: String?
    var url: String?
    
    var contenant: String = ""  // identifiant d'un contenant dans la taxonomie des contenants
    // une cerise peut être fraîche ou conservée sous différente formes: séche, congelée, à l'eau de vie
    var conservation: String = ""
    
    public var show : String {
        var string = conservation
        if contenant != "" {
            string = string + " en " + contenant
        }
        return string
    }
}
