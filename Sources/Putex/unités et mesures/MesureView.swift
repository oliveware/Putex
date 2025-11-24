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
                switch mesure.quantité {
                case .débutmois:
                    DuréeView($mesure.nombre, false)
                case .finmois:
                    DuréeView($mesure.nombre, true)
                case .interdate:
                    DuréeView($mesure.nombre, nil)
                default:
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
                VStack( alignment:.leading) {
                    NumberView($volume)
                    NumberView($hp)
                    NumberView($mensuel)
                    
                    HStack {
                        Text( "début de mois").frame(width:100, alignment: .leading)
                        DuréePreview(start:false)
                            .frame(width:300)
                    }
                    
                }.frame(width:400).padding()
            }
        } .padding()
    }
}

#Preview {
    MesurePreview().frame(width:600)
}
