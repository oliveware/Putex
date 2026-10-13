//
//  LigneCF.swift
//  Putex
//
//  Created by Herve Crespel on 13/10/2026.
//

public struct LigneCF:Codable {
    var article: String
    var unitaire: String
    var quantité: String
    var HT: Montant
    var taxe: Montant
    var TTC: String
    
   

    
    var facture: [String] {
        var ligne:[String] = [article, quantité, unitaire]
        ligne.append(HT.enchiffres)
        ligne.append(taxe.enchiffres)
        ligne.append(TTC)
        return ligne
    }

}
