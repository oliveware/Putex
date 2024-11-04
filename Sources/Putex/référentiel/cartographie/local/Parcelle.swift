//
//  Parcelle.swift
//  Semantex
//
//  Created by Herve Crespel on 01/11/2024.
//

struct Parcelle: Codable, Identifiable {
    var id:Int
    
    var nom:String
    
    struct adresse: Codable {
        var voie:String
        var numéro:String
    }
    // adresses des voies qui bordent la parcelle
    var adresses:[adresse] = []
    
    
    enum Kind: String, Codable {
        case agricole   = "agricole"
        case foret      = "forêt"
        case logement   = "logement"
        case commerce   = "commerce"
        case industrie  = "industrie"
        case autre      = "non défini"
    }
    var kind = Kind.logement
    

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
