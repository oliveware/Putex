//
//  Parcelle.swift
//  Semantex
//
//  Created by Herve Crespel on 01/11/2024.
//

struct Parcelle: Codable, Identifiable {
    
    var id:Int
    var lid:LID?
    
    init(_ numeroCadastral:Int = 0) { id = numeroCadastral }
    
    public var isNaN: Bool {
       // id == 0 || (lid == nil)
        lid == nil
    }
    
    var label:String {"n° " + String(id)}
    
    // une parcelle peut avoir deux adresses géographiques
    var numvoie: [NumVoie] = []
    
    var commune:String {
        var nom = ""
        if let lid = lid {
            if let commune = Lieu(lid).commune {
                nom = commune.nom
            } else {
                nom = "!commune"
            }
        } else {
            nom = "!lid"
        }
        return nom
    }
    func adresse(_ complement:String? = nil, _ autre:Bool = false) -> String {
        if autre {
            if numvoie.count > 1 {
                return numvoie[1].adresse(complement) + " " + commune
            } else {
                return "pas d'autre adresse"
            }
        } else {
            if numvoie.count > 0 {
                return numvoie[0].adresse(complement) + " " + commune
            } else {
                return "pas d'adresse"
            }
        }
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


