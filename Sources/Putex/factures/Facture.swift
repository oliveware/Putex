//
//  Facture.swift
//  Locations
//
//  Created by Herve Crespel on 10/01/2023.
//

import Foundation

public struct Facture : Codable {
    
    public enum Kind: String, Codable {
        case eau = "Facture d'eau"
        case elec = "Facture d'électricité"
        case telecom = "Facture telecom"
        case classic = "Facture"
    }

    var kind : Kind?
    var date : JMA
    var elec: Facturelec?
    var eau:  Factureau?
    var telecom: FactureTelecom?
    var classic: Enlignes?

    var tete:String {
        if kind == nil {
            return "Facture du \(date.entexte)"
        } else {
            return "\(kind!.rawValue) du \(date.entexte)"
        }
    }
    
    struct Enlignes: Codable {
        var lignes:[LigneCF] = []
        
        init(_ ventes:[Vente]) {
            for vente in ventes {
                lignes.append(LigneCF(vente))
            }
        }
        
        var HT : Montant {
            var somme = Montant(0)
            for ligne in lignes {
                somme = somme + ligne.HT
            }
            return somme
        }
        
        var taxe: Montant {
            var somme = Montant(0)
            for ligne in lignes {
                somme = somme + ligne.taxe
            }
            return somme
        }
        
        var total:String {
            (HT + taxe).enchiffres
        }
    }
    
    var total:String {
        classic?.total ?? ""
    }
    
  /*  var pied:String {
        if paiement == nil {
            return "à payer : \(total)"
        } else {
            return paiement!.reçu
        }
    }*/
    
    
}













