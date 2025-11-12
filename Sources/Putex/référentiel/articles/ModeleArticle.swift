//
//  ModeleArticle.swift
//  Putex
//
//  Created by Herve Crespel on 09/11/2025.
//


// un modèle d'article permet de distinguer des articles de même type
// exemple de l'automobile
public struct ModeleArticle: Codable {

    var description: String = ""
    var marque: String = ""
    var imagurl: String?
    var url: String?
    // cerise en boite ou en bocal
    var contenant: String?  // identifiant d'un contenant dans la taxonomie des contenants
    // une cerise peut être fraîche ou conservée sous différente formes: séche, congelée, à l'eau de vie
    var conservation: String?
    
    public var show : String {
        var string = ""
        if let cons = conservation {
            if let cont = contenant {
                string = cons + " en " + cont
            } else {
                string = cons
            }
            
        }
        return string
    }
}
