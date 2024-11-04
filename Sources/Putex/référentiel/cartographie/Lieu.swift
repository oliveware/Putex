//
//  File.swift
//  
//
//  Created by Herve Crespel on 01/05/2024.
//

import Foundation

public struct LID : Codable, Identifiable {
    var global:Globalid
    var urba:Urbanid?
    
    public var id: String {
        let t = global.territoire * 4096
        let r = (global.region ?? 0) * 64
        let c = global.commune ?? 0
        let g = String( t + r + c)
        if let urba = urba {
            let q = urba.quartier * 4096
            let p = (urba.parcelle ?? 0) * 64
            let l = urba.local ?? 0
            return g + "-" + String( q + p + l)
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
   // var batiment : Batiment?
   // var local : Local?
    
    public  init(_ lid:LID) {
        let global = lid.global
        let urba = lid.urba

        territoire = Continent.europe[global.territoire]
        if global.region != nil {
            region = territoire[global.region!]
            if global.commune != nil {
                let commune = region![global.commune!]
                self.commune = commune
                if urba != nil {
                    let quartier = commune[urba!.quartier]
                    self.quartier = quartier
                    if urba!.parcelle != nil {
                        parcelle = quartier[urba!.parcelle!]
                    }
                }
            }
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








