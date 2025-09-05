//
//  Terrain.swift
//  Putex
//
//  Created by Herve Crespel on 13/11/2024.
//
import SwiftUI

public struct Terrain: Codable, Identifiable {
    
    public var id:String
    
    
    var label:String {String(id)}
    
    init(_ parcelles:[LID]) {
        self.parcelles = parcelles
        id = Coderef.newcode(.terrain)
    }
    public init() { id = "" }
    
    
    var checked:Bool {
        parcelidmain != LID.NA && parcelles.count > 0
    }
    
    init(_ json:String) {
        let jsonData = json.data(using: .utf8)!
        let terrain = try! JSONDecoder().decode(Terrain.self, from: jsonData)
        self = terrain
    }
    
    //var parcelles:[Parcelle] = []
    var parcelles:[LID] = []
    
    // un terrain peut avoir deux adresses géographiques, héritées de ses parcelles
    var parcelidmain = LID.NA
    var parcelidautre = LID.NA
    
    func cartoucheAdresses(_ complement:String? = nil) -> String {
        var string = "\tprincipale\n" + adresse(complement)
        if parcelidautre != LID.NA {
            string += "\n\n\tsecondaire\n" + adresse(complement,true)
        }
        return string
    }
    public func adresses(_ complement:String? = nil) -> [String] {
        return [adresse(complement), adresse(complement,true)]
    }
    
    func adresse(_ complement:String? = nil, _ autre:Bool = false) -> String {
        var found = ""
        if autre {
            for lid in parcelles {
                if lid == parcelidautre {
                    if let parcelle = Lieu(lid).parcelle {
                        found = parcelle.adresse(complement, true)
                        break
                    }
                }
            }
        } else {
            for lid in parcelles {
                if lid == parcelidmain {
                    if let parcelle = Lieu(lid).parcelle {
                        found = parcelle.adresse(complement, false)
                        break
                    }
                }
            }
        }
        return found
    }
    
    var surface:Mesure {
        var surface = Mesure(.aire)
       // let zero = Mesure("0",.aire)
        for lid in parcelles {
            if let parcelle = Lieu(lid).parcelle {
                surface = (surface + parcelle.surface) ?? surface
            }
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
            for lid in parcelles {
                if let parcelle = Lieu(lid).parcelle {
                    if let vp = parcelle.valeur {
                        value = value + vp
                        let datestim = parcelle.prixm2!.date
                        if datestim < date { date = datestim }
                    } else {
                        NaN = "incomplète"
                    }
                }
            }
            return Valeur(Estimation(), Estimation(date, value, NaN ))
        } else {
            return valorisation!
        }
    }
    
    
}
