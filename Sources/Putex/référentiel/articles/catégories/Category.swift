//
//  Category.swift
//  Semantex
//
//  Created by Herve Crespel on 13/12/2024.
//

enum Category : String, Codable, Identifiable {
    static var all: [Category] = [.consommable, .durable, .utility, .location, .honoraire, .assurance, .investment, .entretien]
    
    static var selector = "catégorie"
    
    var id: Self {self}
    
    case utility        = "service"
    case location       = "location"
    case honoraire      = "honoraire"
    case consommable    = "consommable"
    case durable        = "équipement"
    case entretien      = "entretien"
    case assurance      = "assurance"
    case investment     = "investissement"
    
    var branded: Bool {
        switch self {
        case .consommable, .durable:
            return true
        default:
            return false
        }
    }
}

