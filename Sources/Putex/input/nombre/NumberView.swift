//
//  Number.swift
//  Xware
//
//  Created by Herve Crespel on 18/01/2021.
//

import SwiftUI



public struct NumberView: View {
    @Environment(\.locale) var locale: Locale
    
    @Binding var nombre: Nombre
    @State var edition = false
    @State var set : NumberSet
    var symbol: String = ""
    var label :String?
    
    @State var dot = ""
    var localedot : String {locale.decimalSeparator ?? ","}
    
    
    public init(_ nombre:Binding<Nombre>, _ set: NumberSet, _ symbol:String = "", _ label:String? = nil) {
        _nombre = nombre

        self.set = set
        self.symbol = symbol
        self.label = label
    }

    public init(_ mesure:Binding<Mesure>) {
        _nombre = mesure.nombre
        let mv = mesure.wrappedValue
        set = mv.set
        symbol = mv.symbol
        label = mv.label
    }

    
    var showidth:CGFloat{
        var nbc = nombre.enchiffres().count + symbol.count + 1
        if nbc < 5 { nbc = 5 }
        return CGFloat(nbc * 8)
    }
    
    
    public var body: some View {
        if edition {
                HStack{
                    if !nombre.isNaN {
                        Button(action: clear)
                        {Image(systemName: "eraser")}
                    }
                    
                    if let label = label {
                        Text(label)
                    }
                    
                    NumberEditor($nombre, set, symbol)
                   .frame(minWidth:showidth + 20)
                    
                    Button(action: {edition = false})
                    {Image(systemName: "checkmark")}
                }
        } else {
            HStack {
                if let label = label {
                    Text(label)
                }
                if nombre.isNaN {
                    Text ("à définir")
                } else {
                    Text(nombre.enchiffres(localedot) + " " + symbol)
                    .font(.title3)
                    //.frame(width:showidth*1.7)
                    }
                Button(action: {edition = true})
                {Image(systemName: "pencil")}
            }
        }
    }
    
    func clear() {
        nombre = Nombre()
        dot = ""
        edition = true
        
    }
}



struct NumberPreview : View {
    @State var nombre : Nombre
    var set : NumberSet = .naturel
    var symbol: String
    var label: String
    
    public init(_ nombre:Nombre, _ set: NumberSet, _ symbol:String = "m2", _ label:String = "surface") {
        self.nombre = nombre
        self.set = set
        self.symbol = symbol
        self.label = label
    }
    
    var body : some View {
        HStack {
            NumberView($nombre, set, symbol, label)
        }
    }
}


#Preview  {
    VStack {
        HStack {
            Text("édition").font(.title3).padding(20)
            Spacer()
        }
        HStack {
            Text("nombre décimal").frame(width:100)
            NumberPreview(Nombre(), .decimal(2))
                .frame(width:400)
        }
        HStack {
            Text("nombre < 1000").frame(width:100)
            NumberPreview(Nombre(1325,2), .decimal(2), "€", "montant")
               .frame(width:400)
        }
        HStack {
            Text("nombre > 1000").frame(width:100)
            NumberPreview(Nombre(1784874782392925,4), .decimal(4), "km", "distance")
               .frame(width:400)
        }
    }.frame(width:520, height:250)
}




