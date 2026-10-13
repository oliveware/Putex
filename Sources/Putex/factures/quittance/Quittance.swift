//
//  Quittance.swift
//  Locations
//
//  Created by Herve Crespel on 31/01/2023.
//

import Foundation

// une quittance de loyer est une archive. Son contenu est définitif.
struct Quittance {

    var moisan : String // "mois & année"
    var proprio: String
    var adresseproprio:String
    var commune:String
    var locataires: String
    var faitale: String
    var adresselocation:String
    
    var body : String
    var loyer : String

    init(_ location:(occupation:String, adresse:String, loyer:String),
         _ mois:Int, _ an:Int,
         _ proprio:(short:String, adresse:String, commune:String),
         _ date:JMA, _ paiement:String ) {
        
        moisan = "\(JMA.moisfr[mois-1]) \(an)"
        self.proprio = proprio.short
        adresseproprio = proprio.adresse
        commune = proprio.commune
        locataires = location.occupation
        faitale = "Fait à \(commune), le \(date.astring)"
        adresselocation = location.adresse
        let lastday = JMA(1,mois,an).nbjm
        body =
        "Je soussigné, \(proprio), propriétaire du logement désigné ci-dessus, déclare avoir reçu \(paiement), au titre du paiement du loyer et des provisions de charges pour la période de location du  premier \(moisan) au \(lastday) \(moisan) et lui en donne quittance, sous réserve de tous mes droits."

        loyer = location.loyer
    }
}



 
