//
//  Region.swift
//  Putex
//
//  Created by Herve Crespel on 02/11/2024.
//

public struct Region: Codable, Identifiable {

    public var id:Int
    var lid:LID?
    
    public var nom = ""
    var km2 : Int?
    var communes:[Commune] = []
    
    var avecterrains: Bool {
        var found = false
        for commune in communes {
            if commune.avecterrains {
                found = true
            }
        }
        return found
    }
   
    init() {
        id = 0
        nom = ""
    }
    var isNaN : Bool { id == 0 }
    
    init(_ territoire:LID) {
       let regionlid = LID(territoire)
        lid = regionlid
        id = regionlid.region!
    }
    
    subscript(_ id:Int) -> Commune? {
        var found : Commune?
        for commune in communes {
            if commune.id == id {
                found = commune
                break
            }
        }
        return found
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
