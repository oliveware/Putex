//
//  Terrain.swift
//  Putex
//
//  Created by Herve Crespel on 13/11/2024.
//

struct Terrain: Codable, Identifiable {
    
    public var id:Int
    var lid:LID?
    
    var label:String {String(id)}
    
    init(_ quartier:LID) {
        let terrainlid = LID(quartier)
        lid = terrainlid
        id = terrainlid.terrain!
    }
    init() { id = 0 }
    
    // un terrain peut avoir deux adresses
    var numvoie =    NumVoie()
    var autrenumvoie: NumVoie?
    public var adresse : [String] {
        return [numvoie.adresse, autrenumvoie?.adresse ?? ""]
    }
    
    func adresse(_ complement:String, _ autre:Bool = false) -> String {
        autre ? (autrenumvoie?.adresse(complement) ?? "") : numvoie.adresse(complement)
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
