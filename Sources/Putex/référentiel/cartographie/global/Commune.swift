//
//  Commune.swift
//  Putex
//
//  Created by Herve Crespel on 02/11/2024.
//

public struct Commune: Codable, Identifiable {
    static var nextid = 100
    static func new() -> Int {
        nextid += 1
        return nextid
    }
    
    public var id:Int?
    
    var nom = ""
    var quartiers:[Quartier] = []
   
    init() {
        id = Commune.new()
    }

    subscript(_ index:Int) -> Quartier {
        quartiers[index]
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

