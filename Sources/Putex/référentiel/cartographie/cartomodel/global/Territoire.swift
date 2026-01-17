//
//  Territoire.swift
//  Putex
//
//  Created by Herve Crespel on 02/11/2024.
//
import SwiftUI

public struct Territoire : Codable, Identifiable {

    public var id:Int
    var lid:LID?
    
    public var nom = ""
    public var pays:String { nom }
    
    var regions:[Region] = []
    
    init() {
        id = 0
        nom = "territoire inconnu"
    }
    
    init(_ continent:LID) {
       let territoirelid = LID(continent)
        lid = territoirelid
        id = territoirelid.territoire!
    }
    
    init(_ json:String) {
        let jsonData = json.data(using: .utf8)!
        let pays = try! JSONDecoder().decode(Territoire.self, from: jsonData)
        self = pays
    }

    subscript(_ id:Int) -> Region? {
        var found : Region?
        for region in regions {
            if region.id == id {
                found = region
                break
            }
        }
        return found
    }
    
    mutating func add() {
        regions.append(Region(lid ?? LID()))
    }
}

/*
extension Territoire {
    static var france = Territoire("France", [
    "Hauts de France", "Normandie", "Corse", "Guyanne"
    ]
    )
 
 /*public init(_ nom:String, _ regions: [String]) {
     self.nom = nom
     for region in regions {
         self.regions.append(Region(region))
     }
 }
 
 mutating func add(_ nom:String) {
     regions.append(Region(nom))
 }
 
 mutating func update(_ region : Region) {
     for index in 0..<regions.count {
         if regions[index].nom == region.nom {
             regions[index] = region
         }
     }
 }*/
}*/
