//
//  Surface.swift
//  Putex
//
//  Created by Herve Crespel on 07/11/2024.
//
import SwiftUI

// une mesure associe un nombre et une unité
public struct Mesure: Codable {
    public static func ratio(_ multiple:Mesure, _ unitaire:Mesure) -> Double? {
        var r: Double?
        let q = multiple.nombre.value / unitaire.nombre.value
        if multiple.quantité == unitaire.quantité {
            r = q
        } else {
            if multiple.quantité.unité == unitaire.quantité.unité {
                r = q
            } else {
                if let ur = Unité.ratio(multiple.quantité.unité, unitaire.quantité.unité) {
                    r = q * ur
                }
            }
        }
        return r
    }
    
    public var nombre: Nombre
    var quantité: Quantité
    public var unité: Unité {quantité.unité}
    
    public var value : Double { nombre.value }
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
    public static func <= (a:Mesure, b:Mesure) -> Bool {
        if a.quantité == b.quantité {
           return a.nombre <= b.nombre
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

public struct MesureView :View {
    @Binding var mesure:Mesure
    
    public init(_ mesure:Binding<Mesure>) {
        _mesure = mesure
    }
    
    public var body: some View {
        NumberView($mesure)
    }
}

struct MesurePreview : View {
    @State var volume = Mesure("19,92", .eau)
    @State var surface = Mesure("45,2", .aire)
    @State var hp = Mesure("4,52", .hp)
    @State var mensuel = Mesure(.mensuel)
    
    var body:some View {
        VStack(alignment:.trailing) {
            NumberView($volume)
            
            MesureView($surface)
            
            NumberView($hp)
            
            NumberView($mensuel)
        } .padding()
    }
}

#Preview {
    MesurePreview()
}

