//
//  File.swift
//  
//
//  Created by Herve Crespel on 01/05/2024.
//

import Foundation

public struct LID : Codable, Identifiable {
    public static var NA = LID(Globalid())
    var global:Globalid
    var local:Localid?
    
    init(_ g:Globalid, _ l:Localid? = nil) {
        global = g
        local = l
    }
    
    public var id: String {
        let t = global.territoire * 4096
        let r = (global.region ?? 0) * 64
        let c = global.commune ?? 0
        let g = String( t + r + c)
        if let local = local {
            let q = local.quartier * 4096
            let p = (local.parcelle ?? 0) * 64
            let b = local.batiment ?? 0
            return g + "-" + String( q + p + b)
        } else {
            return g
        }
    }
}

public struct Lieu {
    
    var territoire : Territoire
    var region : Region?
    var commune : Commune?
    var quartier : Quartier?
    var parcelle : Parcelle?
    var batiment : Batiment?
    
    public  init(_ lid:LID) {
        let global = lid.global
        let local = lid.local

        territoire = Continent(Europe)[global.territoire]
        if global.region != nil {
            region = territoire[global.region!]
            if global.commune != nil {
                let commune = region![global.commune!]
                self.commune = commune
                if local != nil {
                    let quartier = commune[local!.quartier]
                    self.quartier = quartier
                    if local!.parcelle != nil {
                        parcelle = quartier[local!.parcelle!]
                    }
                }
            }
        }
     }
    
    public var adresse: (
              numero : String,
              voie : String,
              complement : String,
              codepostal : String,
              commune : String,
              pays : String
    ) {
        let pays = territoire.nom
        if let batiment = batiment {
            let numero = batiment.adresse.num
            let voie = batiment.adresse.voie
            let complement = batiment.nom
            let codepostal = batiment.codepostal
            let commune = commune!.nom
            return (numero: numero, voie: voie, complement: complement, codepostal: codepostal, commune: commune, pays: pays)
        } else {
            return (numero: "", voie: "", complement: "", codepostal: "", commune: "", pays: pays)
        }
    }
    
 /*  public  init(_ lid:[Int]) {
        territoire = Continent.europe[lid[0]]
        if lid.count > 1 {
            region = territoire[lid[1]]
        }
        if lid.count > 2 {
            commune = region![lid[2]]
        }
        if lid.count > 3 {
            quartier = commune![lid[3]]
        }
        if lid.count > 4 {
            parcelle = quartier![lid[4]]
        }
       /* if lid.count > 5 {
            batiment = parcelle![lid[5]]
        }*/
    }
 */
   
}

enum Division : String, Codable {
    case territoire = "territoire"
    case region = "région"
    case commune = "commune"
    case quartier = "quartier"
    case parcelle = "parcelle"
    //case batiment = "batiment"
}








