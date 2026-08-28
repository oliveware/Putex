//
//  Estimation.swift
//  Semantex
//
//  Created by Herve Crespel on 25/09/2024.
//
import Foundation

public struct Estimation: Codable {
    public static func + (a:Estimation, b:Estimation) -> Estimation {
        let date = a.date < b.date ? a.date : b.date
        let montant = a.montant + b.montant
        let source = (a.source ?? "") + " - " + (b.source ?? "")
        return Estimation(date, montant, source)
    }
    var date: JMA
    public var montant: Montant
    var source: String?
    
    
    public init(_ e:Estimejson) {
        date = JMA(e.date)
        montant = Montant(e.cents)
        source = e.source
    }
    
    init(_ date:JMA, _ montant:Montant, _ source:String) {
        self.date = date
        self.montant = montant
        self.source = source
    }
    
    public init() {
        date = JMA(Date.now)
        montant = Montant()
    }
    
    public var entexte:String {
        if montant.nombre.entiere == nil {
            " à définir"
        } else {
            "\(montant.enchiffres) \t(\(date.entexte))"
        }
    }
    
    private var unchecked:Bool?
    var checked:Bool {
        unchecked == nil ? false : !unchecked!
    }
    mutating func check() {
        unchecked = montant.isnul
    }

}

public struct Estimejson : Codable {
    var date: String
    var cents: Int
    var source: String?
    
    public init(_ e:Estimation) {
        date = e.date.astring
        cents = e.montant.cents
        source = e.source
    }
    
    public init(_ date:String, _ cents:Int, _ source:String? = nil) {
        self.date = date
        self.cents = cents
        self.source = source
    }
}
