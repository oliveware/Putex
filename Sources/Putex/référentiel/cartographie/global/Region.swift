//
//  Region.swift
//  Putex
//
//  Created by Herve Crespel on 02/11/2024.
//

public struct Region: Codable, Identifiable {
    static var nextid = 100
    static func new() -> Int {
        nextid += 1
        return nextid
    }

    public var id:Int?
    
    var nom = ""
    var communes:[Commune] = []
   
    init() {
        id = Region.new()
    }

    subscript(_ index:Int) -> Commune {
        communes[index]
    }
}

/*
extension Region {
    static var hdf = Region("Hauts de France", [
       "Lille", "Seclin", "Villeneuve d'Ascq", "Hardelot", "Hauboudin"
    ])
    static var normandie = Region("Normandie", [
        "Dieppe"
    ])
 
 /* public init(_ nom:String, _ communes: [String] = []) {
     self.nom = nom
     for commune in communes {
         self.communes.append(Commune(commune))
     }
 }
 
 mutating func add(_ nom:String) {
     communes.append(Commune(nom))
 }
 
 mutating func update(_ commune : Commune) {
     for index in 0..<communes.count {
         if communes[index].nom == commune.nom {
             communes[index] = commune
         }
     }
 }*/
}*/
