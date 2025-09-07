//
//  File.swift
//  
//
//  Created by Herve Crespel on 23/05/2024.
//

import Foundation

// représentation d'un nombre décimal en base 10
public struct Nombre: Codable {
        
    var entiere:Int?
    var decimales:String = ""
    //let base = 10
    
    public var isNaN: Bool {
        entiere == nil && decimales == ""
    }
    
    init() { }
    
    init(_ e:Int) {
        entiere = e
        decimales = ""
    }
    
    public init(_ s:String){
        var enchiffre = ""
        for character in s {
            if ["0","1","2","3","4","5","6","7","8","9",",",".","-"].contains(character) {
                enchiffre += String(character)
            }
        }
        let point = enchiffre.split(separator: ".")
        let virgule = enchiffre.split(separator: ",")
        if point.count == 1 && virgule.count == 1 {
            entiere = Int(enchiffre) ?? 0
        } else {
            if point.count == 2 {
                entiere = Int(point[0]) ?? 0
                decimales = String(point[1])
            } else {
                if virgule.count == 2 {
                    entiere = Int(virgule[0]) ?? 0
                    decimales = String(virgule[1])
                } else {
                    print("\(s) n'est pas un nombre")
                }
            }
        }
    }
    
    // d.count doit correspondre au NumberSet
    init(_ e:String, _ d:String = "", _ negative:Bool = false) {
        var entier = Int(e) ??  0
        if negative { entier = -entier }
        entiere = entier
        decimales = d
    }
    
    public init(_ n:Int, _ nbdec:Int = 0) {
        let negative = n < 0
        if nbdec == 0 {
            entiere = n
        } else {
            let div = Nombre.div(nbdec)
            let reste = n % div
            entiere = (n - reste) / div
            var deci = negative ? String(-reste) : String(reste)
            let nbzero = String(div).count - 1 - deci.count
            for _ in 0..<nbzero { deci = "0" + deci }
            decimales = deci
        }
        if negative { entiere = -entiere! }
    }
    
    public init(_ d:Double, _ nbdec:Int = 2) {
        let div = Nombre.div(nbdec)
        let nombre = Int( d * Double(div))
        self.init( nombre, nbdec )
        
        
        /*entiere = Int(d)
        
        let chiffres = String(d)
        if let index = chiffres.firstIndex(of: ",") {
            decimales = String(chiffres[index...])
        } else {
            if let index = chiffres.firstIndex(of: ".") {
                decimales = String(chiffres[index...])
            } else {
                decimales = ""
            }
        }*/
    }
    
    static private func div(_ nbdec:Int) -> Int {
        let base = 10
        var d = 1
        if nbdec > 0 {
            for _ in 0..<nbdec {
                d = base * d
            }
        }
        return d
    }
    
    public var value : Double {
        var decimal : Double = 0
        if decimales != "" {
            if let deci = Double(decimales) {
                decimal = deci / Double(Nombre.div(decimales.count))
            } else {
                print("décimales erronées : \(decimales)")
            }
        }
        if let entier = entiere {
            if entier < 0 { decimal = -decimal }
            return Double(entier) + decimal
        } else {
            return 0
        }
    }
  
    // arrondi ne concerne que les décimales
    public var cents: Int {
        var deci : Int
        if decimales == "" { deci = 0 } else {
            if let decint = Int(decimales) {
                if decint < 100 {
                    deci = decint
                } else {
                    let dec = Int(Double(decint)/100)
                    if dec < 10 {
                        deci = 10 * dec
                    } else {
                        deci = dec
                    }
                }
            } else {
                deci = 0
                print("erreur : decimales incorrectes : \(decimales)")
            }
        }
        if let entier = entiere {
            if entier < 0 {
                return entier * 100 - deci
            } else {
                return entier * 100 + deci
            }
        } else {
            return 0
        }
    }
    
    public func enchiffres(_ dot:String = ",") -> String {
        var chiffres = ""
        if let entier = entiere {
            if entier < 1000 {
                chiffres = String(entier)
            } else {
                var main = entier
                while main > 999 {
                    let reste = main % 1000
                    let groupe = String(reste)
                    switch groupe.count {
                    case 0 :
                        chiffres = " 000" + chiffres
                    case 1:
                        chiffres = " 00" + String(reste) + chiffres
                    case 2:
                        chiffres = " 0" + String(reste) + chiffres
                    default:
                        chiffres = " " + String(reste) + chiffres
                    }
                    main = (main - reste) / 1000
                    
                }
                if main > 0 { chiffres = String(main) + chiffres}
                if entier < 0 { chiffres = "-" + chiffres }
            }
            if decimales != "" {
                return chiffres + dot + decimales
            } else {
                return chiffres
            }
        } else {
            if decimales == "" {
                return ""
            } else {
                return "0" + dot + decimales
            }
        }
       
        
    }
    
    public var enlettres: String {
        if let entier = entiere {
            var lettres = "\(entier.enlettres)"
            if decimales != "" { lettres += " et \(iemes)"}
            return lettres
        } else {
            return ""
        }
    }
    
    public func enlettres(_ devise:Devise) ->  String {
        if let entier = entiere {
            var lettres = entier.enlettres + " " + (devise.mot?.quantifié(entier) ?? "")
            if decimales != "" {
                if let deci = Int(decimales) {
                    if deci > 0 {
                        lettres += " et " + deci.enlettres + " " + (devise.cent?.quantifié(deci) ?? "")
                    }
                } else {
                    print ("erreur nombre en lettres : \(entiere)")
                }
            }
            return lettres
        } else {
            return ""
        }
    }
    public func enlettres(_ classifier:Mot) ->  String {
        if let entier = entiere {
            var lettres = "\(entier.enlettres) \(entier > 1 ? classifier.pluriel : classifier.singulier)"
            if decimales != "" {
                if let deci = Int(decimales) {
                    if deci > 0 {
                        lettres += " et \(iemes) de \(deci == 1 ? classifier.singulier : classifier.pluriel)"
                    }
                } else {
                    print ("erreur nombre en lettres : \(entiere)")
                }
            }
            return lettres
        } else {
            return ""
        }
    }
    
    var iemes : String {
        var result = ""
        if decimales != "" {
            let deci = Int(decimales)
            switch decimales.count {
            case 1:
                result = deci == 1 ? " dizième" : " dizièmes"
            case 2:
                result = deci == 1 ? " centième" : " centièmes"
            case 3:
                result = deci == 1 ? " millième" : " millièmes"
            case 4:
                result = deci == 1 ? " dix millième" : "dix millièmes"
            case 5:
                result = deci == 1 ? " cent millième" : " cent millièmes"
            case 6:
                result = deci == 1 ? " millionième" : " millionièmes"
            default:
                result = deci == 1 ? " micronième" : " micronièmes"
            }
        }
        return result
    }
}

public extension Int {
    func decimal(_ nbdec:Int = 2) -> String {
        let negatif = self < 0
        var nombre : Nombre
        if negatif {
            nombre = Nombre( -self, nbdec)
        } else {
            nombre = Nombre( self, nbdec)
        }
        return "\(negatif ? "-" : "") \(nombre.enchiffres())"
    }
}

extension Nombre {
    public static func > (a:Nombre, b:Nombre) -> Bool {
        return a.value > b.value
    }
    public static func <= (a:Nombre, b:Nombre) -> Bool {
        return a.value <= b.value
    }
    
    public static func > (a:Nombre, b:Int) -> Bool {
        return a.value > Double(b)
    }
    
    public static func - (a:Nombre, b:Nombre) -> Nombre {
        return Nombre(String(a.value - b.value))
    }
    
    public static func + (a:Nombre, b:Nombre) -> Nombre {
        return Nombre(String(a.value + b.value))
    }
    
    public static func * (a:Nombre, b:Nombre) -> Nombre {
        return Nombre(String(a.value * b.value))
    }
    public static func / (a:Nombre, b:Nombre) -> Nombre {
        return Nombre(String(a.value / b.value))
    }
}
