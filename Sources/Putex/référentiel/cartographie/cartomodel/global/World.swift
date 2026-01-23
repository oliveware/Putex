//
//  World.swift
//  Putex
//
//  Created by Herve Crespel on 02/01/2026.
//
import Foundation

struct World: Codable {
    //static var Europe = World(continents).sept[1]
    static var Europe = Continent(1, "Europe", lands: [France,Deutschland,England,Nederland,Spania,Cymru])
    static var sept = World([Europe, NorthAmerica, SouthAmerica, Africa, Asia, Oceanie, Antartica])
    static var seven = World("seven")
    //static var Europe = sept["Europe"]
    //static var France = Europe["France"]
    
    var continents : [Continent]
    
    init(_ parts: [Continent] = []) {
        continents = parts
    }
    
    init(_ filename: String) {
        self = cache.get(filename)
    }
    /*init(_ json:String) {
        let jsonData = json.data(using: .utf8)!
        let terre = try! JSONDecoder().decode([Continentjson].self, from: jsonData)
        continents = []
        for continentjson in terre {
            continents.append(Continent(continentjson))
        }
        LID.nextinit(continents)
    }*/
    
    subscript(_ id:Int) -> Continent? {
        var found : Continent?
        for continent in continents {
            if continent.id == id {
                found = continent
                break
            }
        }
        return found
    }
    
    subscript(_ nom:String) -> Continent {
        var found : Continent?
        for continent in continents {
            if continent.nom == nom {
                found = continent
                break
            }
        }
        return found ?? Continent()
    }
}



