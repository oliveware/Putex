//
//  Parcelle.swift
//  Semantex
//
//  Created by Herve Crespel on 01/11/2024.
//

struct Parcelle: Codable, Identifiable {
    
    var id:Int
    
    init(_ num:Int) {
        id = num
    }
    
    var surface = Mesure(.aire)
    
    var prixm2 : Estimation?
    
    var valeur: Montant? {
        var value : Montant? = nil
        if prixm2 != nil && !surface.nombre.isNaN {
            value = surface.nombre.value * prixm2!.montant
        }
        return value
    }
    
    var show:String {
        var aire = "\t (surface non mesurée)"
        if surface.nombre.entiere != nil {
            aire =  " (" + surface.astring + ")"
        }
        return "n° " + String(id) + aire
    }
}


