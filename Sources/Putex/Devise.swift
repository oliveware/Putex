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

    // nombre de décimales
    var decimal_digits = 2
    // diviseur pour arrondir en centimes
    var div:Int {
        var d = 1
        if decimal_digits > 0 {
            for _ in 0..<decimal_digits {
                d = 10 * d
            }
        }
        return d
    }
    // décimales à supprimer pour trouver les centimes
    var rounding = 0
    // diviseur pour arrondir en centimes
    var rounder:Int {
        var d = 1
        if rounding > 0 {
            for _ in 0..<rounding {
                d = 10 * d
            }
        }
        return d
    }
    
    // var short = ""
    var singulier = ""
    var pluriel = ""
    var cent = "cent"
    var cents = "cents"
    
    public init(_ k:Kind, _ dec:Int = 2, _ r:Int = 0) {
        kind = k
        name = k.rawValue
        decimal_digits = dec
        rounding = r
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
}

public extension Int {
    var euro:String {
        money(Devise(.EUR))
       // string(100, "€")
    }
    func money(_ d:Devise) -> String {
        moneydigits(d.div, d.symbol)
    }
    func monetaire(_ d:Devise) -> String {
        moneydigits(d.div, d.code)
    }
    func moneyname(_ d:Devise) -> String {
        moneydigits(d.div, d.name)
    }
    
    func moneydigits(_ div:Int = 100, _ symbole:String = "€") -> String {
        let negatif = self < 0
        var value : Int
        if negatif {
            value = -self
        } else {
            value = self
        }
        let reste = value % div
        if reste == 0 {
            return "\(negatif ? "-" : "") \(value / div) \(symbole)"
        } else {
            let mant = (value - reste) / div
            var decimales = String(reste)
            let nbzero = String(div).count - 1 - decimales.count
            for _ in 0..<nbzero { decimales = "0" + decimales }
            return "\(negatif ? "-" : "") \(mant),\(decimales) \(symbole)"
        }
    }
}
