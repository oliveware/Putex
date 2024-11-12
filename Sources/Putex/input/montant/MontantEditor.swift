//
//  MontantEditor.swift
//  Semantex
//
//  Created by Herve Crespel on 14/10/2024.
//

import SwiftUI
import Putex

var un_montant = Montant(12300)
//let devise = Choice(prompt:"devise", width:100, choix:["€ euro","$ dollar US","£ livre anglaise"])

public struct MontantEditor: View {
    var prompt = "montant"
    @Binding var montant : Montant?

    var editable = true
    var autovalide = false
    @Binding var edition: Bool
    
    var width : CGFloat {
        if montant == nil {
            return 40
        } else {
            let nbc = String(montant!.cents).count
            return CGFloat(nbc < 1 ? 40 : nbc * 6)
        }
    }
    
    public init(_ m:Binding<Montant?>,_ p:String = "",_ edit:Binding<Bool>, _ auto:Bool = false) {
        _montant = m
        prompt = p
        _edition = edit
        autovalide = auto
    }
    
    var show: some View {
        Text(montant?.enchiffres ?? "")
    }
    
    var edit: some View {
        HStack {
            if edition {
               // NumberView($nombre, false, .decimal(2), "")
               // TextField("", value:$montant.cents, format:.number)
                Text("cents")
                    
                Spacer()
                    
              //  Text(Devise(montant.devisymbol).cents)
                if autovalide {
                    Button(action:{edition = false})
                    { Image(systemName: "checkmark") }
                }
            } else {
                Button(action: {edition = true}) {
                    show
                }
            }
        }.frame(width:100+width)
    }
    
    public var body: some View {
        HStack {
            if prompt != "" {Text("\(prompt) : ")}
            if editable { edit } else { show }
        }
    }
}

// pour le catalogue des Hiware
struct MontantEditPreview: View {
    @State var montant = Montant(12301)
    @State var edition = true
    
    var body: some View {
        VStack(spacing:15) {
            MontantView($montant, "", $edition)
            
            Text(montant.enlettres)
            
            Text("\(montant.enchiffres)")
        }
    }
}

#Preview("demo") {
    MontantEditPreview().frame(width:500)
}


