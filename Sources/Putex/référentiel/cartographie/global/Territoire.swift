//
//  Territoire.swift
//  Putex
//
//  Created by Herve Crespel on 02/11/2024.
//

public struct Territoire : Codable, Identifiable {

    public var id:Int
    
    var nom:String
    public var pays:String { nom }
    
    var regions:[Region] = []
    
    

    subscript(_ index:Int) -> Region {
        regions[index]
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
