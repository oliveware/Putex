//
//  Commune.swift
//  Putex
//
//  Created by Herve Crespel on 02/11/2024.
//

public struct Commune: Codable, Identifiable {
    
    public var id:Int
    var lid:LID?
    
    public var nom = ""
    var quartiers:[Quartier] = []
    
    var avecterrains: Bool {
        var found = false
        for quartier in quartiers {
            if quartier.parcelles.count > 0 {
                found = true
            }
        }
        return found
    }
   
    init(_ region:LID) {
        let communelid = LID(region)
        lid = communelid
        id = communelid.commune!
    }
    init() { id = 0 }

    subscript(_ id:Int) -> Quartier? {
        var found : Quartier?
        for quartier in quartiers {
            if quartier.id == id {
                found = quartier
            }
        }
        return found
    }
}

/*
extension Commune {
    static var lille = Commune("Lille")
    static var seclin = Commune("Seclin", [
        "67 14 07"
    ])
    static var vda = Commune("Villeneuve d'Ascq")
    static var hardelot = Commune("Hardelot")
    static var hauboudin = "Haubourdin"
    static var dieppe = Commune("Dieppe")
 
 public init(_ nom:String, _ divisions: [String] = []) {
     self.nom = nom
     for div in divisions {
         quartiers.append(Quartier(div))
     }
 }
 
 mutating func add(_ nom:String) {
     quartiers.append(Quartier(nom))
 }
 
 mutating func update(_ division : Quartier) {
     for index in 0..<quartiers.count {
         if quartiers[index].nom == division.nom {
             quartiers[index] = division
         }
     }
 }
 }
*/

