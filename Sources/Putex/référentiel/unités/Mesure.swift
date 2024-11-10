//
//  Surface.swift
//  Putex
//
//  Created by Herve Crespel on 07/11/2024.
//
import SwiftUI

public struct Mesure: Codable {
    var nombre: Nombre
    var unit : Unité
    
    var astring : String {
        unit.mesure(nombre.value)
    }
    
    public init(_ unit:Unité = .aire) {
        nombre = Nombre()
        self.unit = unit
    }
    public init(_ s:String, _ unit:Unité = .aire) {
         nombre = Nombre(s)
        self.unit = unit
    }
}

/*public struct Surface: Codable {
    var nombre: Nombre
    var unit = Unité.aire
    
    var mesure : String {
        unit.mesure(nombre.value)
    }
    
    public init(_ s:String, _ unit:Unité = .aire) {
         nombre = Nombre(s)
        self.unit = unit
    }
}

public struct SurfaceView : View {
    @Binding var surface:Surface
    
    public init(_ surface:Binding<Surface>) {
        _surface = surface
    }
    
    public var body:some View {
        HStack{

            NumberView($surface.nombre, .decimal(2), surface.unit.symbol, "surface")

        }
    }
}*/

struct MesurePreview : View {
    @State var volume = Mesure("19,92", .eau)
    @State var surface = Mesure("45,2", .aire)
    @State var hp = Mesure("4,52", .hp)
    @State var optionel = Mesure(.long)
    
    var body:some View {
        VStack {
            NumberView($volume)
            
            NumberView($surface)
            
            NumberView($hp)
            
            NumberView($optionel)
        } .frame(width:250)
    }
}

#Preview {
    MesurePreview()
}

