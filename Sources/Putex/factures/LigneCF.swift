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
    
    public init(article: String, unitaire: String, quantité: String, HT: Montant, taxe: Montant, TTC: String) {
        self.article = article
        self.unitaire = unitaire
        self.quantité = quantité
        self.HT = HT
        self.taxe = taxe
        self.TTC = TTC
    }

    
    var facture: [String] {
        var ligne:[String] = [article, quantité, unitaire]
        ligne.append(HT.enchiffres)
        ligne.append(taxe.enchiffres)
        ligne.append(TTC)
        return ligne
    }

}
