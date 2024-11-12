//
//  MontantView.swift
//  Semantex
//
//  Created by Herve Crespel on 17/01/2021.
//

import SwiftUI
import Putex


public struct MontantView: View {
    var prompt = "montant"
    @Binding var montant : Montant

    var editable = true
    @Binding var edition: Bool
    
    var width : CGFloat {
        let nbc = String(montant.cents).count
        return CGFloat(nbc < 1 ? 40 : nbc * 6)
    }
    
    public init(_ m:Binding<Montant>,_ p:String = "",_ edit:Binding<Bool>) {
        _montant = m
        prompt = p
        _edition = edit
    }
    
    var show: some View {
        Text(montant.enchiffres)
    }
    
    var edit: some View {
        HStack {
            if edition {
                NumberView($montant.nombre, .decimal(2), "")
                DevisePicker($montant.symbol)
                    Spacer()
                    
              
            } else {
                Button(action: {edition = true}) {
                    show
                }
            }
        }.frame(width:150+width)
    }
    
    public var body: some View {
        HStack {
            if prompt != "" {Text("\(prompt) : ")}
            if editable { edit } else { show }
        }
    }
}

// pour le catalogue des Hiware
struct MontantDemo: View {
    @State var montant = Montant(12301,"€")
    @State var edition = false
    
    var body: some View {
        VStack(spacing:15) {
            MontantView($montant, "", $edition)
            
            Text(montant.enlettres)
            
            Text("\(montant.enchiffres)")
        }
    }
}

#Preview("show") {
    MontantDemo().frame(width:500)
}
#Preview("edit") {
    MontantDemo(edition:true).frame(width:500)
}


