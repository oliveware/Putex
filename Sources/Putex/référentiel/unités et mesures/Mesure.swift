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
    var quantité: Quantité
    
    
    public var astring : String {
        quantité.unité.mesure(nombre.value)
    }
    
    public init(_ q:Quantité) {
        nombre = Nombre()
        quantité = q
    }
    public init(_ s:String, _ q:Quantité) {
        nombre = Nombre(s)
        quantité = q
    }
    
}

extension Mesure {
    init(_ n:Nombre, _ q:Quantité) {
        nombre = n
        quantité = q
    }
    
    public static func > (a:Mesure, b:Mesure) -> Bool {
        if a.quantité == b.quantité {
           return a.nombre > b.nombre
        } else {
           return false
        }
    }
    public static func - (a:Mesure, b:Mesure) -> Mesure? {
        if a.quantité == b.quantité {
            return Mesure(a.nombre - b.nombre, a.quantité)
        } else {
            return nil
        }
    }
    public static func + (a:Mesure, b:Mesure) -> Mesure? {
        if a.quantité == b.quantité {
            return Mesure(a.nombre + b.nombre, a.quantité)
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
    @State var volume = Mesure("19,92", .eau)
    @State var surface = Mesure("45,2", .aire)
    @State var hp = Mesure("4,52", .hp)
    @State var mensuel = Mesure(.mensuel)
    
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

