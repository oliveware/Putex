//
//  Consommable.swift
//  Semantex
//
//  Created by Herve Crespel on 24/06/2025.
//

public enum Consommable : String, Codable, Identifiable {
    public var id : Self { self }
    
    case nourriture = "nourriture"
    case entretien = "entretien"
    case carburant = "carburant"
    
    static var all: [Consommable] = [
        .nourriture, .entretien, .carburant
    ]
}
