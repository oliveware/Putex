//
//  File.swift
//  
//
//  Created by Herve Crespel on 23/05/2024.
//

import Foundation

// représentation d'un nombre décimal en base 10
public struct Nombre: Codable {
        
    var entiere:Int = 0
    var decimales:String = ""
    var base = 10
    
    public var isnul: Bool {
        entiere == 0 && decimales == ""
    }
    
    init() {
        entiere = 0
    }
    
    init(_ e:Int) {
        entiere = e
        decimales = ""
    }
    
    init(_ s:String){
        let point = s.split(separator: ".")
        let virgule = s.split(separator: ",")
        if point.count == 1 && virgule.count == 1 {
            entiere = Int(s) ?? 0
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
        entiere = Int(e) ??  0
        if negative { entiere = -entiere }
        decimales = d
    }
    
    public init(_ n:Int, _ nbdec:Int = 0) {
        if nbdec == 0 {
            entiere = n
        } else {
            let div = div(nbdec)
            let reste = n % div
            entiere = (n - reste) / div
            var deci = String(reste)
            let nbzero = String(div).count - 1 - deci.count
            for _ in 0..<nbzero { deci = "0" + deci }
            decimales = deci
        }
    }
    
    public init(_ d:Double) {
        entiere = Int(d)
        
        let chiffres = String(d)
        if let index = chiffres.firstIndex(of: ",") {
            decimales = String(chiffres[index...])
        } else {
            if let index = chiffres.firstIndex(of: ".") {
                decimales = String(chiffres[index...])
            } else {
                decimales = ""
            }
        }
    }
    
    func div(_ nbdec:Int) -> Int {
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
        if let deci = Double(decimales) {
            decimal = deci / Double(div(decimales.count))
        } else {
            print("décimales erronées")
        }
        return Double(entiere) + decimal
    }
  
    
    /*var cents : (c:Int, nbdec:Int) {
        if decimales == "" {
            return (c:entiere, nbdec:0)
        } else {
            let value = Int(String(entiere) + decimales) ?? 0
            if entiere < 0 {
                return (c:-value, nbdec:decimales.count)
            } else {
                return (c:value, nbdec:decimales.count)
            }
        }
    }*/
    
    public func enchiffres(_ dot:String = ",") -> String {
        var chiffres = ""
        if entiere < 1000 {
            chiffres = String(entiere)
        } else {
            var main = entiere
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
        }
       
        if decimales != "" {
            return chiffres + dot + decimales
        } else {
            return chiffres
        }
    }
    
    public var enlettres: String {
        var lettres = "\(entiere.enlettres)"
        if decimales != "" { lettres += " et \(iemes)"}
        return lettres
    }
    
    public func enlettres(_ devise:Devise) ->  String {
        var lettres = "\(entiere.enlettres) \(entiere > 1 ? devise.pluriel : devise.singulier)"
        if decimales != "" {
            if let deci = Int(decimales) {
                if deci > 0 {
                    lettres += " et \(deci.enlettres) \(deci == 1 ? devise.cent : devise.cents)"
                }
            } else {
                print ("erreur nombre en lettres")
            }
        }
        return lettres
    }
    public func enlettres(_ classifier:Mot) ->  String {
        var lettres = "\(entiere.enlettres) \(entiere > 1 ? classifier.pluriel : classifier.singulier)"
        if decimales != "" {
            if let deci = Int(decimales) {
                if deci > 0 {
                    lettres += " et \(iemes) de \(deci == 1 ? classifier.singulier : classifier.pluriel)"
                }
            } else {
                print ("erreur nombre en lettres")
            }
        }
        return lettres
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
