//
//  Quantité.swift
//  Putex
//
//  Created by Herve Crespel on 11/11/2024.
//
import SwiftUI

// nature de la chose mesurée
public struct Quantité: Codable, Equatable {
    public static func == (a:Quantité, b:Quantité) -> Bool {
        if let na = a.nature {
            return na == b.nature
        } else {
            return a.label == b.label
        }
    }
    
    var nature : Quantifiable?
  //  var autrenature : String?
    
    var label : String = ""
    
    init(_ code:Quantifiable) {
        nature = code
        label = label(code)
    }
    init(_ autre:String) {
     //   autrenature = autre
        label = autre == "" ? "inconnu" : autre
    }
    
    func label(_ nature:Quantifiable) -> String {
        switch nature {
        case .elec,.hp,.hc,.eau  : return "consommation " + nature.rawValue
        case .aire   : return "surface"
       // case .jour   : return "nb de jours"
        case .annuel,.mensuel   : return "abonnement"
        //case .unit   : return "nb de pièces"
        default: return "label"
        }
    }
    
    func couleur(_ nature:Quantifiable) -> Color {
        switch nature {
        case .eau:          return Color.blue
        case .elec,.hp,.hc: return Color.red
        case .annuel,.mensuel:           return Color.yellow
       default:    return Color.white
        }
    }
    

}



public enum Quantifiable: String,Codable {
    
    static var utility :[Quantifiable] = [.eau, .elec, .hp, .hc, .gaz, .web, .mobile,.cloud,.tv]
    static var loyer = "loyer"
    static var honoraire = "honoraires"
    static var nourriture = "nourriture"
    static var equipement = "équipement"
    
    case mensuel = "nb mois"
    case annuel = "nb années"
    
    case eau = "eau"
    case elec = "électricité"
    case hc = "heures creuses"
    case hp = "heures pleines"
    case gaz = "gaz"
    case web = "accès internet"
    case mobile = "réseau mobile"
    case cloud = "cloud"
    case tv = "télévision"
        
    case aire = "surface"
    case volume = "volume"
    //case loyer = "loyer"
}
