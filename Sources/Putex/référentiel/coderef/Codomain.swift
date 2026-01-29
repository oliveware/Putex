//
//  Codomain.swift
//  Putex
//
//  Created by Herve Crespel on 29/01/2026.
//
import Taxionomy


public enum Codomain :String, Codable {
    
    case article    = "A"
    case batiment   = "B"
    case company    = "C"
    case equipement = "E"
    case foncier    = "F"
    case human      = "H"
    case local      = "L"
    case offre      = "O"
    case cataloffre = "OC"
    case payment    = "P"
    case piece      = "Q"
    case location   = "R"     // Rent
    case tarif      = "T"
    case compte     = "W"
    case taxation   = "X"
    case appareil   = "Z"
    
    var name: Mot {
        switch self {
            
        case .article: return Mot("article","articles",.f)
        case .batiment: return Mot("bâtiment","bâtiments",.m)
        case .company: return Mot("bâtiment","bâtiments",.m)
        case .equipement:return Mot("équipement","équipements",.m)
        case .foncier:return Mot("foncier","fonciers",.m)
        case .human:return Mot("humain","humains",.m)
        case .local:return Mot("local","locaux",.m)
        case .offre:return Mot("offre","offres",.f)
        case .cataloffre:return Mot("catalogue","catalogues",.m)
        case .payment:return Mot("paiement","paiements",.m)
        case .piece:return Mot("pièce","pièces",.f)
        case .location:return Mot("location","locations",.f)
        case .tarif:return Mot("tarif","tarifs",.m)
        case .compte:return Mot("compte","comptes",.m)
        case .taxation:return Mot("taxation","taxations",.f)
        case .appareil:return Mot("appareil","appareils",.m)
        }
    }
}
