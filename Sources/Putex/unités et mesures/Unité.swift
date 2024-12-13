//
//  Quantite.swift
//
//
//  Created by Herve Crespel on 29/01/2024.
//

import Foundation
import SwiftUI

public enum Unité: String, Codable, Enumerable {
    
    static func ratio(_ multiple:Unité, _ unitaire:Unité) -> Double? {
        var q: Double?
        if multiple == unitaire { q = 1 } else {
           if multiple == .m3 && unitaire == .l { q = 1000 }
        }
        return q
    }
    static var all: [Unité] {
        Self.allCases
    }
    public static var selector = "unité"
    
    public var label:String {
        self.rawValue
    }
    public var id: Self {self}
    
    case kwh    = "kWh"
    case m      = "m"
    case m2     = "m2"
    case m3     = "m3"
    case l      = "l"
    case jour   = "jour"
    case mois   = "mois"
    case unit   = "pièce"

    public var local: Mot {
        switch self {
        case .l: return Mot("litre","litres")
        case .m : return Mot("mètre","mètres")
        case .m2 : return Mot("mètre carré","mètres carrés")
        case .m3:  return Mot("mètre cube", "mètres cubes")
        case .kwh: return Mot("kWh","kWh")
        case .jour: return Mot("jour","jours")
        case .mois: return Mot("mois","mois")
        case .unit: return Mot("pièce", "pièces")
        }
    }
    
    public func mesure(_ value: Double) -> String {
        switch self {
        case .kwh:
            return Measurement(value:value, unit:UnitEnergy.kilowattHours).formatted()
        case .l :
            return Measurement(value:value, unit:UnitVolume.liters).formatted()
        case .m :
            return Measurement(value:value, unit:UnitLength.meters).formatted()
        case .m2 :
            return Measurement(value:value, unit:UnitArea.squareMeters).formatted()
        case .m3 :
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
        case .l: return "l"
        case .m: return UnitLength.meters.symbol
        case .m2: return "m2"
        case .m3: return "m3"
        case .kwh: return "kWh"
        case .jour: return "jour"
        case .mois: return "mois"
        case .unit : return ""
        }
    }
    
    public var numberset:NumberSet {
        switch self {
        case .l:    return .naturel
        case .m:    return .decimal(3)
        case .m2:   return .decimal(2)
        case .m3:   return .decimal(3)
        case .kwh: return .naturel
        case .jour: return .naturel
        case .mois: return .naturel
        case .unit : return .naturel
        }
    }
   
    
   
}


public extension Int {
    
    func unit(_ unit:String = "") -> String {
        "\(self) \(unit)"
    }
}
