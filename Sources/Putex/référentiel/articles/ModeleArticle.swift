//
//  ModeleArticle.swift
//  Putex
//
//  Created by Herve Crespel on 09/11/2025.
//
import Taxionomy

// un modèle d'article permet de distinguer des articles de même type
// exemple de l'automobile
public struct ModeleArticle: Codable {

    var description: String = ""
    var marque: String = ""
    var imagurl: String?
    var url: String?
    // cerise en boite ou en bocal
    var contenant: Idnom?  // identifiant d'un contenant dans la taxionomie des contenants
    var fermeture: Idnom?  // identifiant d'une fermeture dans la taxionomie des fermeturts
    
    // une cerise peut être fraîche ou conservée sous différente formes: séche, congelée, à l'eau de vie
    var conservation: Conservation?
    
    public init() {}
    
    public var show: String {
        var string = description
        if marque != "" {
            string = string + "\nmarque : \(marque)"
        }
        if conditionné {
            string = string + "\nconditionnement : "
        }
        if let cons = conservation {
            string = string + " " + cons.show
        }
        if let cont = contenant {
            string = string + " en " + cont.nom
        }
        if let ferme = fermeture {
            string = string + " à " + ferme.nom
        }
        return string
    }
    var conditionné : Bool {
        contenant != nil || fermeture != nil || conservation != nil
    }
    var illustré : Bool {
        imagurl != nil || url != nil
    }
    public var isNaN: Bool {
        description == "" && marque == "" && !illustré && !conditionné
    }
    
    struct Idnom: Codable {
        var id:String   // identifiant d'un taxion dans une taxionomie
        var nom:String
        init(_ taxion:Taxion) {
            id = taxion.id
            nom = taxion.short
        }
    }
}
