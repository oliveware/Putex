//
//  File.swift
//  
//
//  Created by Herve Crespel on 01/06/2024.
//

import Foundation

public enum TypeCompteAnalytique: String, Codable, Selectable {
    public var id: Self { self }
    static var all : [Self] = Self.allCases
    static var foncier: [Self] = [.caution,.loyer,.entretien,.admin,.assurance,.réparation,.indemnité,.taxes]
    public static var selector: String = "compte analytique"
    public var label: String {self.rawValue}
    
    case caution    = "Dépôt de garantie"
    case loyer      = "Loyers"
    case entretien  = "Maintenance"
    case admin      = "Frais d'administration et de gestion"
    case assurance  = "Assurances"
    case réparation = "Réparations"
    case indemnité  = "Indemnités"
    case taxes      = "Taxes"
    case other      = "compte"
    
    var description : String {

        switch self {
            
        case .caution:
             "garantie remboursable"
        case .loyer:
             "Loyers perçus"
        case .entretien:
             "Factures d'entretien courant"
        case .admin:
            "Rémunérations des gardes et concierges; rémunérations, honoraires et commissions versées à un tiers; frais de procédure"
        case .assurance:
             "Primes d'assurance"
        case .réparation:
             "Dépenses de réparation, d'entretien et d'amélioration"
        case .indemnité:
            "Indemnités d'éviction, frais de relogement"
        case .taxes:
             "Taxes foncières, taxes annexes"
        case .other:
            "inconnu"
        }
    }
}
