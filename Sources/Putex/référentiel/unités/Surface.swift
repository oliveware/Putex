//
//  Surface.swift
//  Putex
//
//  Created by Herve Crespel on 07/11/2024.
//
import SwiftUI

public struct Surface: Codable {
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

/*public struct SurfaceView : View {
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

struct SurfacePreview : View {
    @State var surface = Surface("19,92")

    
    var body:some View {
        NumberView($surface)
            .frame(width:250)
    }
}

#Preview {
    SurfacePreview(surface:Surface("19,92"))
}

