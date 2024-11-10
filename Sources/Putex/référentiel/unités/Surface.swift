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
    
    init(_ s:String, _ unit:Unité = .aire) {
         nombre = Nombre(s)
        self.unit = unit
    }
}

public struct SurfaceView : View {
    @Binding var surface:Surface
    var prompt = "surface"
    @State var edition = false
    
    public init(_ surface:Binding<Surface>, _ prompt:String? = nil) {
        _surface = surface
        if let p = prompt {
           if p != "" {self.prompt = p}
        } else {
            self.prompt = ""
        }
    }
    
    public var body:some View {
        HStack{
            Text(prompt)
            NumberView($surface.nombre, $edition, .decimal(2), surface.unit.symbol)
            if edition {
                Button(action: {edition = false})
                {Image(systemName: "checkmark")}
            }
        }
    }
}

struct SurfacePreview : View {
    @State var surface = Surface("19,92")
    var prompt:String?
    
    var body:some View {
        SurfaceView($surface, prompt)
            .frame(width:200)
    }
}

#Preview {
    SurfacePreview(surface:Surface("19,92"), prompt:"")
}
#Preview("no prmpt") {
    SurfacePreview(surface:Surface("9,58"), prompt:nil)
}
