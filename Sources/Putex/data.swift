//
//  data.swift
//
//
//  Created by Herve Crespel on 21/05/2024.
//

import Foundation


struct Putexdata {
    var choix = ""
    var mot = Mot("chose", "choses", .f)
    var nompropre = "Boris Goudounov"
    var date = JMA(15, 5, 2024)
    var devise = Devise(.EUR)
    var erreur = Erreur("problème dans", "Type", "Propriété")
    var ligne = "une ligne courte"
    var entier = 0
    var image = Picture("photo")
    
    init () {}
}
