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
    
    public init(_ code:Quantifiable) {
        nature = code
        label = label(code)
    }
    public init(_ autre:String) {
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
    
    public func couleur(_ nature:Quantifiable) -> Color {
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
