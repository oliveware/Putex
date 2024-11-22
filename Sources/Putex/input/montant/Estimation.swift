//
//  Estimation.swift
//  Semantex
//
//  Created by Herve Crespel on 25/09/2024.
//

public struct Estimation: Codable {
    var date: JMA
    public var montant: Montant
    var source: String?
    var done:Bool = false
    
    public init(_ e:Estimejson) {
        date = JMA(e.date)
        montant = Montant(e.montant)
        source = e.source
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
    var source: String?
    
    public init(_ e:Estimation) {
        date = e.date.astring
        montant = e.montant.enchiffres
        source = e.source
    }
    
    init(_ date:String, _ montant:String, _ source:String? = nil) {
        self.date = date
        self.montant = montant
        self.source = source
    }
}
