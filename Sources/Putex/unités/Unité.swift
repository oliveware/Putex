//
//  Quantite.swift
//
//
//  Created by Herve Crespel on 29/01/2024.
//

import Foundation
import SwiftUI

public enum Unité: String, Codable, Selectable {
    static var all: [Unité] {
        Self.allCases
    }
    public static var selector = "unité"
    public var label: String {self.rawValue}
    
    public var id: Self {self}
    
    case elec   = "global (hc + hp)"
    case hc     = "heures creuses"
    case hp     = "heures pleines"
    case long = "longueur"
    case aire = "surface"
    case volume  = "eau (m3)"
    case eau    = "eau (l)"
    case jour   = "journée"
    case mois   = "mois"
    case unit   = "pièce"

    public var local: Mot {
        switch self {
        case .eau:      return Mot("litre","litres")
        case .long :    return Mot("mètre","mètres")
        case .aire :    return Mot("mètre carré","mètres carrés")
        case .volume:   return Mot("mètre cube", "mètres cubes")
        case .elec,.hc,.hp: return Mot("kWh","kWh")
        case .jour:          return Mot("jour","jours")
        case .mois:          return Mot("mois","mois")
        case .unit :        return Mot("pièce", "pièces")
        }
    }
    
    public func global(_ value: Double) -> String {
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
        case .jour:
            return "jour"
        case .mois :
            return "mois"
        default:
            return "pièce"
        }
    }
    
    public var symbol:String {
        switch self {
        case .eau:          return "l"
        case .long:         return "m"
        case .aire:         return "m2"
        case .volume:       return "m3"
        case .elec,.hc,.hp: return "kWh"
        case .jour:         return "j"
        case .mois:         return "m"
        case .unit :        return ""
        }
    }
   
    
    public var color:Color {
        switch self {
        case .eau:                  return Color.blue
        case .elec,.hc,.hp:         return Color.red
        case .jour, .mois:           return Color.yellow
        case .long, .aire, .volume: return Color.white
        case .unit:    return Color.white
        }
    }
}


public extension Int {
    
    func unit(_ unit:String = "") -> String {
        "\(self) \(unit)"
    }
}
