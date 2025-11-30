//
//  Cadrage.swift
//  Putex
//
//  Created by Herve Crespel on 30/11/2025.
//

public struct Cadrage: Codable {
    var options: [Option] = []
    var modele: Configurateur?
    
    struct Option:Codable {
        var nom = ""
        var configurateur: Configurateur?
    }
    
    func find(_ nom:String) -> Option {
        var found = Option()
        for option in options {
            if option.nom == nom {
                found = option
            }
        }
        return found
    }
}
