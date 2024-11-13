//
//  File.swift
//  
//
//  Created by Herve Crespel on 01/05/2024.
//

import Foundation

public struct LID : Codable, Identifiable {
    public static var NA = LID()
    static var next = (one:0, two:0, three:0, four:0, five:0)
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
    
    var territoire : Int
    var region : Int?
    var commune : Int?
    var quartier : Int?
    var terrain : Int?
    
    // initialisation du niveau inférieur
    init(_ lid:LID? = nil) {
        if let parent = lid {
            territoire = parent.territoire
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
    }
    
    public init(_ tab:[Int]) {
        let div = tab.count
        if div > 0 {
            territoire = tab[0]
            if div > 1 {
                region = tab[1]
                if div > 2 {
                    commune = tab[2]
                    if div > 3 {
                        quartier = tab[3]
                        if div == 5 {
                            terrain = tab[4]
                        }
                    }
                }
            }
        } else {
            territoire = LID.territoire()
        }
    }
    
    public var id: String {
        var t =  String(territoire)
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
        return t
    }
}

public struct Lieu {
    
    public var territoire : Territoire
    public var region : Region?
    public var commune : Commune?
    var quartier : Quartier?
    var terrain : Terrain?
    
    public  init(_ lid:LID) {

        territoire = Continent(Europe)[lid.territoire]
        if lid.region != nil {
            region = territoire[lid.region!]
            if lid.commune != nil {
                let commune = region![lid.commune!]
                self.commune = commune
                if lid.quartier != nil {
                    let quartier = commune[lid.quartier!]
                    self.quartier = quartier
                    if lid.terrain != nil {
                        terrain = quartier![lid.terrain!]
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








