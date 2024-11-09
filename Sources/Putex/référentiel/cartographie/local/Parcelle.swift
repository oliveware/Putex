//
//  Parcelle.swift
//  Semantex
//
//  Created by Herve Crespel on 01/11/2024.
//

struct Parcelle: Codable, Identifiable {
    static var nextid = 100
    static func new() -> Int {
        nextid += 1
        return nextid
    }
    
    var id:Int?
    
    init() {
        id = Parcelle.new()
    }
    
    var nom = ""
    
    enum Kind: String, Codable {
        case agricole   = "agricole"
        case foret      = "forêt"
        case logement   = "logement"
        case commerce   = "commerce"
        case industrie  = "industrie"
    }
    var kind : Kind?
    

/*    extension Parcelle {
        static var soixantesept = Parcelle("148", [
            "rue", "cour", "grange"
        ])
    }*/
    /*var batiments:[Batiment] = []
    
    init(_ nom:String, _ divisions: [String] = []) {
        self.nom = nom
        for div in divisions {
            batiments.append(Batiment(div))
        }
    }
    
    mutating func add(_ nom:String) {
        batiments.append(Batiment(nom))
    }
    
    mutating func update(_ division : Batiment) {
        for index in 0..<batiments.count {
            if batiments[index].nom == division.nom {
                batiments[index] = division
            }
        }
    }

    subscript(_ index:Int) -> Batiment {
        batiments[index]
    }*/
}
