//
//  Terrain.swift
//  Putex
//
//  Created by Herve Crespel on 13/11/2024.
//
import SwiftUI

public struct Terrain: Codable, Identifiable {
    
    public var id:Int
    var lid:LID?
    
    var label:String {String(id)}
    
    init(_ quartier:LID) {
        let terrainlid = LID(quartier)
        lid = terrainlid
        id = terrainlid.terrain ?? 0
    }
    public init() { id = 0 }
    public var isNaN: Bool {
       // id == 0 || (lid == nil)
        lid == nil
    }
    
    init(_ json:String) {
        let jsonData = json.data(using: .utf8)!
        let terrain = try! JSONDecoder().decode(Terrain.self, from: jsonData)
        self = terrain
    }
    
    // un terrain peut avoir deux adresses
    var numvoie =    NumVoie()
    var autrenumvoie: NumVoie?
    var commune:String {
        var nom = ""
        if let lid = lid {
            if let commune = Lieu(lid).commune {
                nom = commune.nom
            }
        }
        return nom
    }
    var address:String {
        var string = autrenumvoie == nil ? "" : "\tprincipale\n"
        string += adresse()
        if autrenumvoie != nil {
            string += "\n\n\tsecondaire\n" + adresse(nil,true)
        }
        return string
    }
    public var adresses : [String] {
        return [adresse(), adresse(nil,true)]
    }
    
    func adresse(_ complement:String? = nil, _ autre:Bool = false) -> String {
        let adresse = autre ? (autrenumvoie?.adresse(complement) ?? "") : numvoie.adresse(complement)
        return adresse + " " + commune
    }
    
    var parcelles:[Parcelle] = []
    
    var surface:Mesure {
        var surface = Mesure(.aire)
       // let zero = Mesure("0",.aire)
        for parcelle in parcelles {
            surface = (surface + parcelle.surface) ?? surface
        }
        return surface
    }
    
    enum Usage: String, Codable {
        case agricole   = "agricole"
        case foret      = "forêt"
        case logement   = "logement"
        case commerce   = "commerce"
        case industrie  = "industrie"
    }
    var usage : Usage?
    
    var valorisation : Valeur?
    
    public var valeur: Valeur {
        if valorisation == nil {
            var value = Montant()
            var NaN :String = ""
            var date = JMA(Date.now)
            for parcelle in parcelles {
                if let vp = parcelle.valeur {
                    value = value + vp
                    let datestim = parcelle.prixm2!.date
                    if datestim < date { date = datestim }
                } else {
                    NaN = "incomplète"
                }
            }
            return Valeur(Estimation(), Estimation(date, value, NaN ))
        } else {
            return valorisation!
        }
    }
    
    
}
