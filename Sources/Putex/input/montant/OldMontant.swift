//
//  File.swift
//  
//
//  Created by Herve Crespel on 25/11/2023.
//

import Foundation
import Putex

public struct OldMontant: Codable {
    
    var cents: Int
    var devisymbol = "€"
    
    var isnul : Bool { cents == 0 }
   
    public init (_ m:Int, _ dk:String = "€") {
        cents = m
        devisymbol = dk
    }
    
    public init(_ montant:String){
        var chiffres = montant
        let lastchar = montant[montant.index(before:montant.endIndex)]
        if !["0","1","2","3","4","5","6","7","8","9"].contains(lastchar) {
            devisymbol = String(lastchar)
            chiffres.remove(at: chiffres.index(before:chiffres.endIndex))
        }
        cents = Int(100 * Nombre(chiffres).value)
    }
    
    public var euro:String {cents.euro}
    public var enchiffres: String {
        cents.euro
       // cents.money(Devise(devisymbol))
    }
    
   /* public var enlettres: String {
        let nombre = Nombre(cents,2)
        return nombre.enlettres(Devise(devisymbol))
    }*/
}
/*
// opérations arithmétiques
public extension Montant {
    
    static func + (_ a:Montant, _ b:Montant) -> Montant {
        if a.devisymbol == b.devisymbol {
            return Montant(a.cents + b.cents, a.devisymbol)
        } else {
            return Montant(0)   // à corriger
        }
    }
    static func + (_ first: Montant,_ others:[Montant])-> Montant {
        var total = first
        for montant in others {
            total = total + montant
        }
        return total
    }
    
    static func + (_ ht:Montant, _ taxe:Taxe) -> Montant {
        return ht + taxe.montant(ht)
    }
    static func + (_ ht: Montant,_ taxation:Taxation)-> Montant {
        var ttc = ht
        for taxe in taxation.taxes {
            ttc = ttc + taxe.montant(ht)
        }
        return ttc
    }
   
    static func - (_ a:Montant, _ b:Montant) -> Montant {
        if a.devisymbol == b.devisymbol {
            return Montant(a.cents - b.cents, a.devisymbol)
        } else {
            return Montant(0)   // à corriger
        }
    }
    static func * (_ a:Int, _ b:Montant) -> Montant {
        return Montant(a * b.cents, b.devisymbol)
    }
    static func * (_ a:Double, _ b:Montant) -> Montant {
        return Montant( Int(a * Double(b.cents)), b.devisymbol )
    }
    static func * (_ a:Quantité, _ b:Montant) -> Montant {
        return a.value * b
    }
    
    static func / (_ a:Montant, _ b:Montant) -> Double {
        return  Double(a.cents) / Double(b.cents)
    }
    static func / (_ a:Montant, _ b:Int) -> Montant {
        return  Montant(Int(Double(a.cents) / Double(b)), a.devisymbol)
    }
    static func / (_ a:Montant, _ b:Double) -> Montant {
        return  Montant(Int(Double(a.cents) / b), a.devisymbol)
    }
    static func / (_ a:Montant, _ b:Quantité) -> Montant {
        return a / b.value
    }
    
    static func == (_ a:Montant, _ b:Montant) -> Bool {
        return a.devisymbol == b.devisymbol && a.cents == b.cents
    }
}
*/
