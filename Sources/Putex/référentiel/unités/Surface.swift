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

public struct SurfaceView : View {
    @Binding var surface:Surface
    @State var edition = false
    
    public init(_ surface:Binding<Surface>) {
        _surface = surface
    }
    
    public var body:some View {
        HStack{

            NumberView($surface.nombre, $edition, .decimal(2), surface.unit.symbol, "surface")
            if edition {
                Button(action: {edition = false})
                {Image(systemName: "checkmark")}
            }
        }
    }
}

struct SurfacePreview : View {
    @State var surface = Surface("19,92")
    @State var edition = false
    
    var body:some View {
        NumberView($surface, $edition)
            .frame(width:250)
    }
}

#Preview {
    SurfacePreview(surface:Surface("19,92"))
}
#Preview("no prmpt") {
    SurfacePreview(surface:Surface("9,58"))
}
