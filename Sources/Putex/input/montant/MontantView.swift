//
//  MontantView.swift
//  Semantex
//
//  Created by Herve Crespel on 17/01/2021.
//

import SwiftUI


public struct MontantView: View {
  //  @Environment(\.locale) var locale: Locale
  //  var localedot : String {locale.decimalSeparator ?? ","}
    @State var dot = ","
    
    @Binding var montant : Montant
    @State var edition = false
    var editable = true
    var label = "montant"
    
    var width : CGFloat {
        let nbc = String(montant.cents).count + label.count + 3
        return CGFloat(nbc < 1 ? 40 : nbc * 7)
    }
    
    public init(_ m:Binding<Montant>,_ p:String = "", _ editable:Bool = true) {
        _montant = m
        label = p
        self.editable = editable
    }
    
    var editorwidth:CGFloat{
        var nbc = montant.nombre.enchiffres().count  + montant.symbol.count + 1
        if nbc < 5 { nbc = 5 }
        return CGFloat(nbc * 9)
    }
    
    var show: some View {
        let prompt = label == "" ? "" : label + " : "
        return Text(prompt + montant.enchiffres)
    }
    
    var edit: some View {
        HStack {
            if edition {
                if !montant.nombre.isNaN {
                    Button(action: clear)
                    {Image(systemName: "eraser")}
                }
                
                if label != "" {
                    Text(label + " : ")
                }
                
                NumberEditor($montant.nombre, .decimal(2), "")
                    .frame(width:editorwidth + 20)
                DevisePicker($montant.symbol)
                
                Button(action: {edition = false})
                {Image(systemName: "checkmark")}
            } else {
                show
                Button(action: {edition = true}) {
                    Image(systemName: "pencil")
                }
            }
        }//.frame(width:150+width)
    }
    
    public var body: some View {
        HStack {
         //   if label != "" {Text("\(label) : ")}
            if editable { edit } else { show }
        }
    }
    
    func clear() {
        montant.nombre = Nombre()
       // dot = ""
        edition = true
    }
}

// pour le catalogue des Hiware
struct MontantDemo: View {
    @State var montant = Montant(12301,"€")
   // @State var edition = false
    
    var editable = false
    
    var body: some View {
        VStack(spacing:15) {
                MontantView($montant, "estimation", editable)

          //  Text(montant.enlettres)
            
          //  Text("\(montant.enchiffres)")
        }
    }
}

#Preview("show") {
    MontantDemo().frame(width:500)
}
#Preview("editable") {
    MontantDemo(editable:true).frame(width:500)
}


