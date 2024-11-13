//
//  Terrain.swift
//  Putex
//
//  Created by Herve Crespel on 13/11/2024.
//

struct Terrain: Codable, Identifiable {
    static var nextid = 100
    static func new() -> Int {
        nextid += 1
        return nextid
    }
    
    var id:Int
    var label:String {String(id)}
    
    init() {
        id = Terrain.new()
    }
    
    var numvoie =    NumVoie()
    var autrenumvoie: NumVoie?
    var adresse : String {
        if autrenumvoie == nil {
            return numvoie.adresse
        } else {
            return numvoie.adresse + "\n" + autrenumvoie!.adresse
        }
    }
    
    var parcelles:[Int] = []
    
    enum Usage: String, Codable {
        case agricole   = "agricole"
        case foret      = "forêt"
        case logement   = "logement"
        case commerce   = "commerce"
        case industrie  = "industrie"
    }
    var usage : Usage?
}
