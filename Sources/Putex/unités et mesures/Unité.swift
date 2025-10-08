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
    case an     = "an"
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
        case .an: return Mot("année","années")
        case .unit: return Mot("pièce", "pièces")
        }
    }
    
    public func mesure(_ value: Double) -> String {
        if value == 0 {
            return "0 " + self.rawValue
        } else {
            switch self {
            case .kwh:
                return Measurement(value:value, unit:UnitEnergy.kilowattHours).formatted()
            case .l :
               // return Measurement(value:value, unit:UnitVolume.liters).formatted()
               let formatter = MeasurementFormatter()
                formatter.unitOptions = .providedUnit
                formatter.numberFormatter.maximumFractionDigits = 2
                formatter.locale = Locale(identifier:"fr_FR")
                return formatter.string (from: Measurement(value:value, unit:UnitVolume.liters))
                    //Measurement(value:value, unit:UnitVolume.liters).formatted(.measurement(width: .wide, usage:.asProvided).locale(Locale(identifier:"fr_FR")))
               // MeasurementFormatUnitUsage<UnitVolume>.liquid
               
            case .m :
                return Measurement(value:value, unit:UnitLength.meters).formatted()
            case .m2 :
                return Measurement(value:value, unit:UnitArea.squareMeters).formatted()
            case .m3 :
                return Measurement(value:value, unit:UnitVolume.cubicMeters).formatted()
            case .jour:
                let nb = Int(value)
                return String(nb) + " jour" + (nb == 1 ? "" : "s")
            case .mois :
                return String(Int(value)) + " mois"
            case .unit:
                return "x " + String(Int(value)) // "pièce"
            default:
                return String(value)
            }
        }
    }
    
    public var symbol:String {
        switch self {
        case .l: return UnitVolume.liters.symbol
        case .m: return UnitLength.meters.symbol
        case .m2: return UnitArea.squareMeters.symbol
        case .m3: return UnitVolume.cubicMeters.symbol
        case .kwh: return UnitEnergy.kilowattHours.symbol
        case .jour: return "jour"
        case .mois: return "mois"
        case .an: return "an"
        case .unit : return ""
        }
    }
    
    public var numberset:NumberSet {
        switch self {
        case .l:    return .naturel
        case .m:    return .decimal(3)
        case .m2:   return .decimal(2)
        case .m3:   return .decimal(3)
        default :   return .naturel
        }
    }
   
    
   
}


public extension Int {
    
    func unit(_ unit:String = "") -> String {
        "\(self) \(unit)"
    }
}
