//
//  Numvoie.swift
//  Putex
//
//  Created by Herve Crespel on 13/11/2024.
//

struct NumVoie: Codable {
    var voie:   String = ""
    var num:    String = ""
    var codepostal:String = ""
    
    var adresse:String {
        num + " " + voie + " " + codepostal
    }
    
    init() {}
}
