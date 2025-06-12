//
//  File.swift
//  
//
//  Created by Herve Crespel on 03/05/2024.
//

import Foundation

public struct Continent : Codable {
    
    var id:Int
    var lid:LID {
        LID([id])
    }
    var nom = ""
    var territoires : [Territoire] = []
    
    init(_ id:Int, _ nom:String, _ lands: [Territoire]) {
        self.id = id
        self.nom = nom
        territoires = lands
    }
    
   /* init(_ json:String) {
        let jsonData = json.data(using: .utf8)!
        let carto = try! JSONDecoder().decode(Continent.self, from: jsonData)
        self = carto
    }*/
    
    func insert(_ lieu: Lieu){
        
    }
    mutating func add() {
        territoires.append(Territoire(lid))
    }
    
    subscript(_ id:Int) -> Territoire? {
        var found : Territoire?
        for territoire in territoires {
            if territoire.id == id {
                found = territoire
                break
            }
        }
        return found
    }
}

struct Continents: Codable {
    static var Europe = Continents(continents).sept[1]
    
    var sept : [Continent]
    
    init(_ json:String) {
        let jsonData = json.data(using: .utf8)!
        let terre = try! JSONDecoder().decode(Continents.self, from: jsonData)
        self = terre
        LID.nextinit(terre.sept)
    }
    
    subscript(_ id:Int) -> Continent? {
        var found : Continent?
        for continent in sept {
            if continent.id == id {
                found = continent
                break
            }
        }
        return found
    }
}





