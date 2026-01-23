//
//  MontantEditor.swift
//  Putex
//
//  Created by Herve Crespel on 08/10/2025.
//

import SwiftUI


public struct MontantEditor: View {
    //  @Environment(\.locale) var locale: Locale
    //  var localedot : String {locale.decimalSeparator ?? ","}
    @State var dot = ","
    
    @Binding var montant : Montant
    
    var label = "montant"
    
    var width : CGFloat {
        let nbc = String(montant.cents).count + label.count + 3
        return CGFloat(nbc < 1 ? 40 : nbc * 7)
    }
    
    public init(_ m:Binding<Montant>,_ p:String = "") {
        _montant = m
        label = p
    }
    
    var editorwidth:CGFloat{
        var nbc = montant.nombre.enchiffres().count  + montant.symbol.count + 1
        if nbc < 5 { nbc = 5 }
        return CGFloat(nbc * 9)
    }
    
    public var body: some View {
        HStack {
            /*   if edition {
             if !montant.nombre.isNaN {
             Button(action: clear)
             {Image(systemName: "eraser")}
             }*/
            
            if label != "" {
                Text(label + " : ")
            }
            
            NumberEditor($montant.nombre, .decimal(2), "")
                .frame(width:editorwidth + 20)
            
            DevisePicker($montant.symbol)
        }
    }
}

struct MontantPreditor: View {
    
    @State var montant = Montant()
    var body: some View {
        MontantView($montant).frame(width:300)
    }
}

#Preview {
    MontantPreditor()
}
