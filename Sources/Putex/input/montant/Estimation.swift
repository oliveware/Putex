//
//  Estimation.swift
//  Semantex
//
//  Created by Herve Crespel on 25/09/2024.
//

public struct Estimation: Codable {
    var date: JMA
    public var montant: Montant
    
    public init(_ e:Estimejson) {
        date = JMA(e.date)
        montant = Montant(e.montant)
    }
    
    public init() {
        date = JMA.origine
        montant = Montant()
    }
    
    public var entexte:String {
        if montant.nombre.entiere == nil {
            " à définir"
        } else {
            "\(montant.enchiffres) \t(\(date.entexte))"
        }
    }

}

public struct Estimejson : Codable {
    var date: String
    var montant: String
    
    public init(_ e:Estimation) {
        date = e.date.astring
        montant = e.montant.enchiffres
    }
    
    init(_ date:String, _ montant:String) {
        self.date = date
        self.montant = montant
    }
}
