//
//  File.swift
//  
//
//  Created by Herve Crespel on 01/06/2024.
//

import Foundation

enum CompteAnalytique: String, Codable, Selectable {
    var id: Self { self }
    static var all : [Self] = Self.allCases
    static var bancaire: [Self] = [.courant,.épargne,.pea,.titre]
    static var foncier: [Self] = [.caution,.loyer,.entretien,.admin,.assurance,.réparation,.indemnité,.taxes]
    static var selector: String = "compte analytique"
    var label: String {self.rawValue}
    
    case courant     = "compte bancaire"
    case épargne    = "livret d'épargne"
    case pea        = "PEA - compte espèces PEA"
    case titre     = "compte titre - espèces"
    
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
        case .courant:
             "compte courant détenu dans une banque"
        case .épargne:
             "livret d'épargne"
        case .pea:
           "compte espèces de PEA"
        case .titre:
           "compte espèces de compte titre"
            
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
