//
//  Quantite.swift
//
//
//  Created by Herve Crespel on 29/01/2024.
//

import Foundation
import SwiftUI

enum Unité: String, Codable, Selectable {
    static var all: [Unité] {
        Self.allCases
    }
    static var selector = "unité"
    var label: String {self.rawValue}
    
    var id: Self {self}
    
    case elec   = "global (hc + hp)"
    case hc     = "heures creuses"
    case hp     = "heures pleines"
    case long = "longueur"
    case aire = "surface"
    case volume  = "eau (m3)"
    case eau    = "eau (l)"
    case jom    = "journée d'ordures ménagères"
    case unit   = "pièce"

    var local: Mot {
        switch self {
        case .eau:      return Mot("litre","litres")
        case .long :    return Mot("mètre","mètres")
        case .aire :    return Mot("mètre carré","mètres carrés")
        case .volume:   return Mot("mètre cube", "mètres cubes")
        case .elec,.hc,.hp: return Mot("kWh","kWh")
        case .jom:          return Mot("jour","jours")
        case .unit :        return Mot("pièce", "pièces")
        }
    }
    
    func global(_ value: Double) -> String {
        switch self {
        case .elec, .hc, .hp :
            return Measurement(value:value, unit:UnitEnergy.kilowattHours).formatted()
        case .eau :
            return Measurement(value:value, unit:UnitVolume.liters).formatted()
        case .long :
            return Measurement(value:value, unit:UnitLength.meters).formatted()
        case .aire :
            return Measurement(value:value, unit:UnitArea.squareMeters).formatted()
        case .volume :
            return Measurement(value:value, unit:UnitVolume.cubicMeters).formatted()
        case .jom:
            return "day"
        default:
            return "piece"
        }
    }
    
    var symbol:String {
        switch self {
        case .eau:          return "l"
        case .long:         return "m"
        case .aire:         return "m2"
        case .volume:       return "m3"
        case .elec,.hc,.hp: return "kWh"
        case .jom:          return "j"
        case .unit :        return ""
        }
    }
   
    
    var color:Color {
        switch self {
        case .eau:          return Color.blue
        case .elec,.hc,.hp: return Color.red
        case .jom:          return Color.yellow
        case .long, .aire, .volume:    return Color.white
        case .unit:    return Color.white
        }
    }
}


    public extension Int {
        
        func unit(_ unit:String = "") -> String{
            "\(self) \(unit)"
        }
    }
