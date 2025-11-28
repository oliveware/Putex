//
//  Conditionnement.swift
//  Putex
//
//  Created by Herve Crespel on 26/11/2025.
//
import Taxionomy

struct Conditionnement: Codable {
    // cerise en boite ou en bocal
    var contenant = Idnom()  // identifiant d'un contenant dans la taxionomie des contenants
    var fermeture = Idnom()  // identifiant d'une fermeture dans la taxionomie des fermeturts
    
    // une cerise peut être fraîche ou conservée sous différente formes: séche, congelée, à l'eau de vie
    var conservation = Conservation()
    
    init() {}
    
    var isNaN : Bool {
        contenant.isNaN && fermeture.isNaN && conservation.isNaN
    }
    
    public var show: String {
        var string =  "Conditionnement : "
            string = string + " " + conservation.show
            string = string + " en " + contenant.nom
            string = string + " à " + fermeture.nom
        return string
    }
    
}
