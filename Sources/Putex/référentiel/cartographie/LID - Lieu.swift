//
//  File.swift
//  
//
//  Created by Herve Crespel on 01/05/2024.
//

import Foundation

public struct LID : Codable, Identifiable {
    public static var NA = LID([0,0,0,0,0])
    static var next = (zero:0, one:0, two:0, three:0, four:0, five:0)
    static func continent() -> Int {
        next.zero += 1 ; return next.zero
    }
    static func territoire() -> Int {
        next.one += 1 ; return next.one
    }
    static func region() -> Int {
        next.two += 1 ; return next.two
    }
    static func commune() -> Int {
        next.three += 1
        return next.three
    }
    static func quartier() -> Int {
        next.four += 1 ; return next.four
    }
    static func terrain() -> Int {
        next.five += 1 ; return next.five
    }
    
    var continent : Int
    var territoire : Int?
    var region : Int?
    var commune : Int?
    var quartier : Int?
    var terrain : Int?
    
    // initialisation du niveau inférieur
    init(_ lid:LID? = nil) {
        if let parent = lid {
            continent = parent.continent
            if let first = parent.territoire {
                territoire = first
                if let second = parent.region {
                    region = second
                    if let third = parent.commune {
                        commune = third
                        if let fourth = parent.quartier {
                            quartier = fourth
                            terrain = LID.terrain()
                        } else {
                            quartier = LID.quartier()
                        }
                    } else {
                        commune = LID.commune()
                    }
                } else {
                    region = LID.region()
                }
            } else {
                territoire = LID.territoire()
            }
        } else {
            continent = LID.continent()
        }
    }
    
    public init(_ tab:[Int]) {
        let div = tab.count
        if div > 0 && tab[0] > 0 {
            continent = tab[0]
            if div > 1 && tab[1] > 0 {
                territoire = tab[1]
                if div > 2 && tab[2] > 0  {
                    region = tab[2]
                    if div > 3 && tab[3] > 0  {
                        commune = tab[3]
                        if div > 4 && tab[4] > 0  {
                            quartier = tab[4]
                            if div == 6 && tab[5] > 0  {
                                terrain = tab[5]
                            }
                        }
                    }
                }
            }
        } else {
            continent = LID.continent()
        }
    }
    
    public var id: String {
        var t = String(continent)
        if let co =  territoire {
            t = t + "-" + String(co)
            if let r = region {
                t = t + "-" + String(r)
                if let c = commune {
                    t = t + "-" + String(c)
                    if let q = quartier {
                        t = t + "-" + String(q)
                        if let p = terrain {
                            t = t + "-" + String(p)
                        }
                    }
                }
            }
        }
        return t
    }
}

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
                return territoire == nil ? "adresse" : territoire!.nom
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
        if let continent = Continents(continents)[continent_id] {
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
            terrain = quartier![lid[4]]
        }
       /* if lid.count > 5 {
            batiment = terrain![lid[5]]
        }*/
    }
 */
   
}

enum Division : String, Codable {
    case territoire = "territoire"
    case region = "région"
    case commune = "commune"
    case quartier = "quartier"
    case terrain = "terrain"
    //case batiment = "batiment"
}








