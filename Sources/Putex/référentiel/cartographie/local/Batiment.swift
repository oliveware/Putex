//
//  Local.swift
//  Putex
//
//  Created by Herve Crespel on 04/11/2024.
//

struct Batiment {
    var nom: String
    // un bâtiment a une seule adresse
    // cette adresse est l'une des adresses de la parcelle
    var adresse = Parcelle.adresse()
    var codepostal:String = ""
    
    init(_ nom:String) {
        self.nom = nom
    }
}
