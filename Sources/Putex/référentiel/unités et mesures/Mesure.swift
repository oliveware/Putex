//
//  Surface.swift
//  Putex
//
//  Created by Herve Crespel on 07/11/2024.
//
import SwiftUI

// une mesure associe un nombre et une unité
public struct Mesure: Codable {
    var nombre: Nombre
    var unité : Unité
    var quantité: Quantité
    
    var set : NumberSet
    var symbol: String
    var label: String
    
    public var astring : String {
        unité.mesure(nombre.value)
    }
    
    public init(_ unit:Unité,
                nature:Quantifiable? = nil,
                numberset: NumberSet? = nil ,
                symbol: String? = nil ,
                label: String? = nil) {
        nombre = Nombre()
        unité = unit
        set = numberset ?? unit.numberset
        self.symbol = symbol ?? unit.symbol
        if nature == nil {
            if label == nil {
                quantité = Quantité("inconnu")
                self.label = "inconnu"
            } else {
                quantité = Quantité(label!)
                self.label = label!
            }
            
        } else {
            let q = Quantité(nature!)
            quantité = q
            self.label = label ?? q.label
        }
    }
    public init(_ s:String, _ unit:Unité, _ nature:Quantifiable) {
        nombre = Nombre(s)
        unité = unit
       let q = Quantité(nature)
        quantité = q
        set = unit.numberset
        symbol = unit.symbol
        label = q.label
    }
    
}

extension Mesure {
    init(_ n:Nombre, _ unit:Unité, _ q:Quantité) {
        nombre = n
        unité = unit
        quantité = q
        set = unit.numberset
        symbol = unit.symbol
        label = q.label
    }
    
    public static func > (a:Mesure, b:Mesure) -> Bool {
        if a.unité == b.unité && a.quantité == b.quantité {
           return a.nombre > b.nombre
        } else {
           return false
        }
    }
    public static func - (a:Mesure, b:Mesure) -> Mesure? {
        if a.unité == b.unité && a.quantité == b.quantité {
            return Mesure(a.nombre - b.nombre, a.unité, a.quantité)
        } else {
            return nil
        }
    }
    public static func + (a:Mesure, b:Mesure) -> Mesure? {
        if a.unité == b.unité && a.quantité == b.quantité {
            return Mesure(a.nombre + b.nombre, a.unité, a.quantité)
        } else {
            return nil
        }
    }
    
 /*
    public init (_ m:Double, _ unité:Unité) {
        value = m
        self.unité = unité
    }
    
    var local: String {
        return "\(value) \(unité.local)"
    }
    var global: String {
        // let locale = Locale(identifier:"fr-FR")
        return unité.mesure(value)
    }*/
    
}

struct MesurePreview : View {
    @State var volume = Mesure("19,92", .l, .eau)
    @State var surface = Mesure("45,2", .m2, .aire)
    @State var hp = Mesure("4,52", .kwh, .hp)
    @State var mensuel = Mesure(.mois, nature:.mensuel)
    
    var body:some View {
        VStack {
            NumberView($volume)
            
            NumberView($surface)
            
            NumberView($hp)
            
            NumberView($mensuel)
        } .frame(width:250)
    }
}

#Preview {
    MesurePreview()
}

