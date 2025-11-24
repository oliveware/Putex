//
//  MesureView.swift
//  Putex
//
//  Created by Herve Crespel on 23/11/2025.
//
import SwiftUI

public struct MesureView :View {
    @Binding var mesure:Mesure
    @State private var edit = false
    public init(_ mesure:Binding<Mesure>) {
        _mesure = mesure
    }
    
    public var body: some View {
        HStack {
            if edit {
                EnumPicker<Quantité>(Quantité.allCases, $mesure.quantité, true)
                    .frame(width:220)
                if mesure.quantité == .nuit {
                    
                } else {
                    NumberEditor($mesure.nombre, mesure.quantité.set)
                }
                Text(mesure.unité.symbol)
                Button(action:{edit = false})
                {Image(systemName: "checkmark")}
            } else {
                Text(mesure.quantité.label + " : " + mesure.astring)
                Button(action:{edit = true})
                {Image(systemName: "pencil")}
            }
            
        }
    }
}

struct MesurePreview : View {
    @State var volume = Mesure("19,92", .eau)
    @State var surface = Mesure("45,2", .aire)
    @State var hp = Mesure("4,52", .hp)
    @State var mensuel = Mesure(.mensuel)
    
    var body:some View {
        VStack(alignment:.leading) {
            
            
            
            GroupBox("choix de la quantité") {
                MesureView($surface)
            }.padding(.bottom, 20)
            GroupBox("quantité imposée") {
                NumberView($volume)
                NumberView($hp)
                NumberView($mensuel)
            }
        } .padding()
    }
}

#Preview {
    MesurePreview().frame(width:500)
}
