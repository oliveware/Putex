//
//  Quantité.swift
//  Putex
//
//  Created by Herve Crespel on 11/11/2024.
//
import SwiftUI

// nature de la chose mesurée
public enum Quantité: String, Codable {
    
    static var utility :[Quantité] = [.eau, .elec, .hp, .hc, .gaz, .web, .mobile,.tv]
    static var loyer = "loyer"
    static var honoraire = "honoraires"
    static var nourriture = "nourriture"
    static var equipement = "équipement"
    
    case mensuel = "mois"
  //  case annuel = "année"
    
    case eau    = "eau"
    case elec   = "électricité"
    case hc     = "heures creuses"
    case hp     = "heures pleines"
    case gaz    = "gaz"
    case web    = "accès internet"
    case mobile = "réseau mobile"
  //  case cloud = "cloud"
    case tv = "télévision"
        
    case aire = "surface"
    case volume = "volume"
    //case loyer = "loyer"
    
    public var unité: Unité {
        switch self {
        case .aire: return .m2
        case .volume: return .m3
        case .elec,.hp,.hc : return .kwh
        case .eau : return .l
        case .gaz: return .m3
        case .mensuel,.web,.mobile,.tv: return .mois
      //  case .annuel: return .an
        }
    }
    var label: String {
        switch self {
        case .elec,.hp,.hc,.eau  : return "consommation " + self.rawValue
        case .aire   : return "surface"
       // case .jour   : return "nb de jours"
        case .mensuel   : return "abonnement"
        //case .unit   : return "nb de pièces"
        default: return "label"
        }
    }
    
    var set: NumberSet {
        switch self {
        case .aire: return .decimal(2)
        case .volume,.gaz: return .decimal(3)
        case .elec,.hp,.hc,.eau, .mensuel,.web,.mobile,.tv : return .naturel
      //  case .annuel: return .an
        }
    }
    
    public var color: Color {
        switch self {
        case .eau:          return Color.blue
        case .elec,.hp,.hc: return Color.red
        case .mensuel:      return Color.yellow
       default:    return Color.white
        }
    }
}


/*
///// une quantité est un compteur ou une mesure

public struct Quantité: Codable {
    public static func > (a:Quantité, b:Quantité) -> Bool {
        return a.value > b.value
    }
    public static func > (a:Quantité, b:Int) -> Bool {
        a.value > Double(b)
    }
 /*   public static func - (a:Quantité, b:Quantité) -> Quantité {
        if a.kind == b.kind {
            if a.nombre == nil {
                return Quantité(a.value - b.value, a.mesure!.unité)
            } else {
                return Quantité(a.nombre! - b.nombre!)
            }
        } else {
            let unit = a.nombre == nil ? a.mesure!.unité : b.mesure!.unité
            return Quantité(a.value - b.value, unit)
        }
    }
    public static func + (a:Quantité, b:Quantité) -> Quantité {
        if a.kind == b.kind {
            if a.nombre == nil {
                return Quantité(a.value + b.value, a.mesure!.unité)
            } else {
                return Quantité(a.nombre! + b.nombre!)
            }
        } else {
            let unit = a.nombre == nil ? a.mesure!.unité : b.mesure!.unité
            return Quantité(a.value + b.value, unit)
        }
    }*/
    
    var kind: Bool { nombre == nil }
    var nombre: Int?
  //  var mesure: Mesure?
    
    public var value: Double {
        if nombre == nil {
            Double(nombre!)
        } else {
           0// mesure!.value
        }
    }
    
    public var astring: String {
        if nombre == nil {
            "\(nombre!)"
        } else {
           ""// "\(mesure!.value)"
        }
    }
    
    public init (_ n:Int) {
        nombre = n
    }

    
  /*  public init (_ m:Double, _ unité:Unité) {
        mesure = Mesure(m, unité)
    }*/

 struct QuantitéView: View {
     
     var prompt: String = "mesure"
     @Binding var quantité : Quantité
     @State var edition = true
     
     var body: some View {
         Form {
             if quantité.nombre != nil {
                 TextField(prompt, value: $quantité.nombre, format:.number)
             } else {
                // MesureView(prompt: prompt, mesure: $quantité.mesure, value: quantité.mesure?.value ?? 0)
             }
         }
             
             
      /*       if previous != nil {
                 let conso = (quantité - previous!)?.astring ?? ""
                 if conso != "" {
                     Text("consommation : \(conso) \(quantité.unité.symbol)")
                         // préciser estimée ou mesurée
                 }
             }*/
     }
 }

 #Preview {
     QuantitéView(quantité: .constant(Quantité(100)))
 }

 
*/
