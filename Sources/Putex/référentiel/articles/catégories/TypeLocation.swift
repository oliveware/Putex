//
//  Location.swift
//  Semantex
//
//  Created by Herve Crespel on 25/06/2025.
//

public enum TypeLocation : String, Codable, Identifiable {
    public var id : Self { self }
    
    case logement = "logement"
    case garage = "garage"
    
    static var all: [TypeLocation] = [
        .logement, .garage
    ]
}
