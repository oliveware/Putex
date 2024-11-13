//
//  Parcelle.swift
//  Semantex
//
//  Created by Herve Crespel on 01/11/2024.
//

struct Parcelle: Codable, Identifiable {
    
    var id:String
    
    init(_ nom:String) {
        id = nom
    }
    
    var surface = Mesure(.aire)
    
    

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
