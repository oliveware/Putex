//
//  Devise.swift
//  Putex
//
//  Created by Herve Crespel on 14/10/2024.
//


import Foundation


// https://freeDeviseapi.com/docs/currencies


public class Devise: Equatable, Codable, Oxet {
    public static func == (lhs: Devise, rhs: Devise) -> Bool {
        lhs.code == rhs.code
    }
    
    public var id:String {code}
    public var label:String {name}
    public static var selector = "devise"
    public static var warning = "aucune devise n'est définie"

    public static var all = Deviset(deviseref)
    static let unknown = Devise("devise inconnue")
    
    static subscript(_ code:String) -> Devise {
        all[code]
    }
    
    /*public static func match(_ char:Character) -> Devise {
        all.match(char)
     }*/
    public static subscript(_ char:Character) -> Devise {
        all.match(char)
     }
    
    init(_ name:String) {
        self.name = name
        symbol = "?"
    }

    var code = ""
    var name: String = ""
    var symbol: String?
    var symbol_native: String?
    
    
    // nombre de décimales dans le calcul de conversion
    public var decimal_digits: Int?
    // décimales à supprimer pour trouver les centimes
    var rounding: Int?
    public var money_digits:Int {
        let dd = decimal_digits ?? 2
        let ro = rounding ?? 0
        return dd - ro
    }
    // diviseur
    func div(_ nbdec:Int) -> Int {
        var d = 1
        if nbdec > 0 {
            for _ in 0..<nbdec {
                d = 10 * d
            }
        }
        return d
    }
    // valeur double avec toutes les décimales
    public func value(_ digits:Int) -> Double {
        let div = Double(div(decimal_digits ?? 2))
        return Double(digits) / div
    }
    // valeur entière exprimée en centimes
    public func cents(_ digits: Int) -> Int {
        let div = Double(div(money_digits))
        return Int(Double(digits) / div )
    }
    // valeur exprimée en nombre
    /*  public func nombre(_ digits:Int) -> Nombre {
     let double = String(value(digits))
     let index = double.lastIndex - decimal_digits
     var decimales = ""
     if index > 0 {
     decimales = double[index...]
     }
     }*/
    
    var mot: Mot?
    var cent: Mot?
 
}


public extension Int {
    var euro:String {
        money(Devise.all["EUR"])
       // string(100, "€")
    }
    func money(_ d:Devise) -> String {
        decimal(d.money_digits) + " " + (d.symbol ?? "")
    }

   func cours(_ d:Devise) -> String {
        decimal(d.decimal_digits ?? 2) + " " + d.code
    }
}
