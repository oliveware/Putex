//
//  Montant.swift
//  Semantex
//
//  Created by Herve Crespel on 17/10/2024.
//

public struct Montant: Codable {
    var nombre:Nombre
    var symbol:String = "€"
    
    public init (_ m:Int, _ ds : String = "€") {
        nombre = Nombre(m,2)
        symbol = ds
    }
    public var isnul : Bool { cents == 0 }
    
    public var cents:Int { nombre.cents }

    public var euro:String {cents.euro}
    public var enchiffres: String {
        //cents.euro
        let symbol = Character(symbol)
       return cents.money(Devise[symbol])
    }
    
    public var enlettres: String {
        let nombre = Nombre(cents,2)
        return nombre.enlettres(Devise[Character(symbol)])
    }
    // pour json decode
    public init(_ montant:String){
        var chiffres = montant
        let lastchar = montant[montant.index(before:montant.endIndex)]
        if !["0","1","2","3","4","5","6","7","8","9"].contains(lastchar) {
            symbol = String(lastchar)
            chiffres.remove(at: chiffres.index(before:chiffres.endIndex))
        }
        nombre = Nombre(chiffres)
    }
    
}

// opérations arithmétiques
public extension Montant {
    
    static func + (_ a:Montant, _ b:Montant) -> Montant {
        if a.symbol == b.symbol {
            return Montant(a.cents + b.cents, a.symbol)
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

    static func - (_ a:Montant, _ b:Montant) -> Montant {
        if a.symbol == b.symbol {
            return Montant(a.cents - b.cents, a.symbol)
        } else {
            return Montant(0)   // à corriger
        }
    }
    static func * (_ a:Int, _ b:Montant) -> Montant {
        return Montant(a * b.cents, b.symbol)
    }
    static func * (_ a:Double, _ b:Montant) -> Montant {
        return Montant( Int(a * Double(b.cents)), b.symbol )
    }
/*    static func * (_ a:Quantité, _ b:Montant) -> Montant {
        return a.value * b
    }*/
    
    static func / (_ a:Montant, _ b:Montant) -> Double {
        return  Double(a.cents) / Double(b.cents)
    }
    static func / (_ a:Montant, _ b:Int) -> Montant {
        return  Montant(Int(Double(a.cents) / Double(b)), a.symbol)
    }
    static func / (_ a:Montant, _ b:Double) -> Montant {
        return  Montant(Int(Double(a.cents) / b), a.symbol)
    }
 /*   static func / (_ a:Montant, _ b:Quantité) -> Montant {
        return a / b.value
    }*/
    
    static func == (_ a:Montant, _ b:Montant) -> Bool {
        return a.symbol == b.symbol && a.cents == b.cents
    }
}
