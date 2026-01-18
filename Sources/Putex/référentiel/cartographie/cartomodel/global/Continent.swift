//
//  Continent.swift
//  
//
//  Created by Herve Crespel on 03/05/2024.
//

import Foundation

// continents définis par le modèle à 7 continents
// les modèles à 6,5,4,et 3 continents s'en déduisent en regroupants certains de ces continents
public struct Continent : Codable, Identifiable {
    
    public var id:Int
    var lid:LID {
        LID([id])
    }
    var nom = ""
    var territoires : [Territoire] = []
    
    init() { id = 0 }
    
    init(_ id:Int, _ nom:String, lands: [Territoire]) {
        self.id = id
        self.nom = nom
        territoires = lands
    }
    init(_ id:Int, _ nom:String, _ lands: [String]) {
        self.id = id
        self.nom = nom
        for land in lands {
            territoires.append(cache.get(land))
        }
    }
    init(_ json: Continentjson) {
        id = json.id
        nom = json.nom
        for land in json.lands {
            territoires.append(cache.get(land))
        }
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
    subscript(_ nom:String) -> Territoire {
        var found : Territoire?
        for territoire in territoires {
            if territoire.nom == nom {
                found = territoire
                break
            }
        }
        return found ?? Territoire()
    }
    // fusion
    init(_ id:Int, _ nom:String, parts:[Continent]) {
        self.id = id
        self.nom = nom
        var lands : [Territoire] = []
        for part in parts {
            lands = lands + part.territoires
        }
        territoires = lands
    }
}


struct Continentjson:Codable {
    var id:Int
    var nom:String
    var lands:[String]
    
    init(_ json:String) {
        let jsonData = json.data(using: .utf8)!
        let continent = try! JSONDecoder().decode(Continentjson.self, from: jsonData)
        self = continent
    }
}




