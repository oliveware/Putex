//
//  data.swift
//
//
//  Created by Herve Crespel on 21/05/2024.
//

import Taxionomy


struct Putexdata {
    var choix = ""
    var date = JMA(15, 5, 2024)
    var devise = Devise["EUR"]
    var erreur = Erreur("problème dans", "Type", "Propriété")
    var naturel = Nombre()
    var relatif = Nombre()
    var euro = Nombre()
    var cours = Nombre()
    var image = Picture("photo")
    
    init () {}
}
