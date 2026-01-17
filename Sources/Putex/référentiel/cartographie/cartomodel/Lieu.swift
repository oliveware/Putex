//
//  Lieu.swift
//  Putex
//
//  Created by Herve Crespel on 10/10/2025.
//

public struct Lieu {
    public var continent : Continent?
    public var territoire : Territoire?
    public var region : Region?
    public var commune : Commune?
    public var quartier : Quartier?
    var terrain : Terrain?
    
    public func adresse(_ complement:String? = nil,_ pays:Bool = false, _ autre:Bool = false) -> String {
        if terrain == nil {
            if commune == nil {
                return territoire == nil ? "définir l'adresse" : territoire!.nom
            } else {
                return commune!.nom + " " + (pays ? territoire!.nom : "")
            }
        } else {
            let adresse = terrain!.adresse(complement, autre) + " " + commune!.nom
            return adresse + (pays ? "\n" + territoire!.nom : "")
        }
    }
    
    public  init(_ lid:LID) {
        let continent_id = lid.continent
        if let continent = World.sept[continent_id] {
            self.continent = continent
            if lid.territoire != nil {
                let territoire = continent[lid.territoire!]
                self.territoire = territoire
                if lid.region != nil {
                    let region = territoire![lid.region!]
                    self.region = region
                    if lid.commune != nil {
                        let commune = region![lid.commune!]
                        self.commune = commune
                        if lid.quartier != nil {
                            let quartier = commune![lid.quartier!]
                            self.quartier = quartier
                            if lid.terrain != nil {
                                terrain = quartier![lid.terrain!]
                                if terrain != nil {terrain!.lid = lid}
                            }
                        }
                    }
                }
            }
        }
     }
}

enum Division : String, Codable {
    case territoire = "territoire"
    case region = "région"
    case commune = "commune"
    case quartier = "quartier"
    case terrain = "terrain"
    //case batiment = "batiment"
}
   
