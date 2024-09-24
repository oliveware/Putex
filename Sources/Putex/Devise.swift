//
//  File.swift
//
//
//  Created by Herve Crespel on 25/11/2023.
//

import Foundation


// https://freeDeviseapi.com/docs/currencies


public class Devise: Equatable, Codable {
    public static func == (lhs: Devise, rhs: Devise) -> Bool {
        lhs.code == rhs.code
    }
    
    public enum Kind: String, Codable{
        case AED = "United Arab Emirates Dirham"
        case AFN = "Afghan Afghani"
        case EUR = "Euro"
        case USD = "US Dollar"
        case JPY = "Japanese Yen"
        case BGN = "Bulgarian Lev"
        case CZK = "Czech Republic Koruna"
        case DKK = "Danish Krone"
        case GBP = "British Pound Sterling"
        case HUF = "Hungarian Forint"
        case PLN = "Polish Zloty"
        case RON = "Romanian Leu"
        case SEK = "Swedish Krona"
        case CHF = "Swiss Franc"
        case ISK = "Icelandic Króna"
        case NOK = "Norwegian Krone"
        case HRK = "Croatian Kuna"
        case RUB = "Russian Ruble"
        case TRY = "Turkish Lira"
        case AUD = "Australian Dollar"
        case BRL = "Brazilian Real"
        case CAD = "Canadian Dollar"
        case CNY = "Chinese Yuan"
        case HKD = "Hong Kong Dollar"
        case IDR = "Indonesian Rupiah"
        case ILS = "Israeli New Sheqel"
        case INR = "Indian Rupee"
        case KRW = "South Korean Won"
        case MXN = "Mexican Peso"
        case MYR = "Malaysian Ringgit"
        case NZD = "New Zealand Dollar"
        case PHP = "Philippine Peso"
        case SGD = "Singapore Dollar"
        case THB = "Thai Baht"
        case ZAR = "South African Rand"
    }
    var kind:Kind
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
    
    // var short = ""
    var singulier = ""
    var pluriel = ""
    var cent = "cent"
    var cents = "cents"
    
    public init(_ k:Kind) {
        kind = k
        name = k.rawValue
        
        decimal_digits = 2
        rounding = 0
        
        switch k {
        case .EUR:
            code = "EUR" ; symbol = "€"
            singulier = "euro" ; pluriel = "euros"
        case .USD:
            code = "USD" ; symbol = "$"
            singulier = "dollar" ; pluriel = "dollars"
        case .GBP:
            code = "UKP" ; symbol = "£" ;
            singulier = "livre" ; pluriel = "livres"
// à compléter
        default:
            name = k.rawValue
        }
    }
    
    public convenience init(_ char:Character){
        switch char {
        case "€" : self.init(.EUR)
        case "$" : self.init(.USD)
        case "£" : self.init(.GBP)
        default:
            self.init(.EUR)
        }
    }
}

public extension Int {
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
    

}
