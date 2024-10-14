//
//  Devise2.swift
//  Putex
//
//  Created by Herve Crespel on 14/10/2024.
//


import Foundation


// https://freeDeviseapi.com/docs/currencies


public class Devise2: Equatable, Codable, Pickable {
    public static func == (lhs: Devise2, rhs: Devise2) -> Bool {
        lhs.code == rhs.code
    }
    
    public var id:String {code}
    public var label:String {name}
    public static var selector = "devise"
    //static var all:[Kind] = [.EUR,.USD,.GBP]
    static var all: [Devise2] = []
    
    
    /*   public static func match(_ char:Character) -> Self {
     switch char {
     case "€" : self.EUR
     case "$" : self.USD
     case "£" : self.GBP
     default:
     self.EUR
     }
     }*/
    
    
    var code = ""
    var symbol: String = ""
    var symbol_native = ""
    var name: String = ""
    
    // nombre de décimales dans le calcul de conversion
    public var decimal_digits = 2
    // décimales à supprimer pour trouver les centimes
    var rounding = 0
    public var money_digits:Int {decimal_digits - rounding}
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
        let div = Double(div(decimal_digits))
        return Double(digits) / div
    }
    // valeur entière exprimée en centimes
    public func cents(_ digits: Int) -> Int {
        let div = Double(div(decimal_digits - rounding))
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
    
    var mot: Mot
    var cent: Mot
}
public struct Deviset {
    var all:[Devise2] = []

    public init(_ json:String = "") {
        var jsonData: Data
        if json == "" {
            jsonData = deviseref.data(using: .utf8)!
        } else {
            jsonData = json.data(using: .utf8)!
        }
        let devises = try! JSONDecoder().decode([Devise2].self, from: jsonData)
        all = devises
        let _ = Coderef(Mot("devise","devises"), devises)
    }
    
    subscript(_ code:String) -> Devise2? {
        var found : Devise2?
        for devise in all {
            if devise.code == code {
                found = devise
                break
            }
        }
        return found
    }
}

/*public extension Int {
    var euro:String {
        money(Devise(.EUR))
       // string(100, "€")
    }
    func money(_ d:Devise) -> String {
        "\(decimal(d.money_digits)) \(d.symbol)"
    }

   func cours(_ d:Devise) -> String {
        "\(decimal(d.decimal_digits)) \(d.code)"
    }
    

}*/
