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
    var contenant: String?  // identifiant d'un contenant dans la taxionomie des contenants
    var fermeture: String?  // identifiant d'une fermeture dans la taxionomie des fermeturts
    // une cerise peut être fraîche ou conservée sous différente formes: séche, congelée, à l'eau de vie
    var conservation: Conservation?
    
    public init() {}
    
    public var show : String {
        var string = description
        if marque != "" {
            string = string + "\nmarque : \(marque)"
        }
        if let cons = conservation {
            string = string + " " + cons.show
        }
        if let cont = contenant {
            string = string + " en " + cont
        }
        if let ferme = fermeture {
            string = string + " à " + ferme
        }
        return string
    }
    
    public var isNaN: Bool { show == "" }
}
