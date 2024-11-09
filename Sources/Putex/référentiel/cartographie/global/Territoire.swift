//
//  Territoire.swift
//  Putex
//
//  Created by Herve Crespel on 02/11/2024.
//

public struct Territoire : Codable, Identifiable {
    static var nextid = 100
    static func new() -> Int {
        nextid += 1
        return nextid
    }

    public var id:Int
    
    public var nom = ""
    public var pays:String { nom }
    
    var regions:[Region] = []
    
    init() {
        id = Territoire.new()
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
