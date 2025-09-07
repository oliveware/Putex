//
//  Number.swift
//  Xware
//
//  Created by Herve Crespel on 18/01/2021.
//

import SwiftUI

public struct NumberView: View {
    //@Environment(\.locale) var locale: Locale
    //var localedot : String {locale.decimalSeparator ?? ","}
    var dot = ","
    
    
    @Binding var nombre: Nombre
    @State var edition = false
    @State var set : NumberSet
    var symbol: String = ""
    var label :String?
    
    public init(_ nombre:Binding<Nombre>, _ set: NumberSet, _ symbol:String = "", _ label:String? = nil) {
        _nombre = nombre

        self.set = set
        self.symbol = symbol
        self.label = label
    }

    public init(_ mesure:Binding<Mesure>) {
        _nombre = mesure.nombre
        let q = mesure.wrappedValue.quantité
        set = q.set
        symbol = q.unité.symbol
        label = q.label
    }

    
    var showidth:CGFloat{
        var nbc = nombre.enchiffres().count + symbol.count + 1
        if nbc < 5 { nbc = 5 }
        return CGFloat(nbc) * 7.1
    }
    
    
    public var body: some View {
        if edition {
                HStack{
                    if !nombre.isNaN {
                        Button(action: clear)
                        {Image(systemName: "eraser")}
                    }
                    
                    if let label = label {
                        Text(label + " : ")
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
                    Text((label == nil ? "" : " : ") + nombre.enchiffres(dot) + " " + symbol)
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
        edition = true
    }
}



struct NumberPreview : View {
    @State var nombre : Nombre
    var set : NumberSet = .naturel
    var symbol: String
    var label: String?
    
    public init(_ nombre:Nombre, _ set: NumberSet, _ symbol:String = "", _ label:String? = nil) {
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


#Preview("exemples")  {
    VStack(alignment:.leading) {
        
        HStack {
            Text("double").frame(width:100)
            NumberPreview(Nombre(1000/3.0, 3), .decimal(3))
                .frame(width:400)
        }

        HStack {
            Text("nombre décimal").frame(width:100)
            NumberPreview(Nombre(), .decimal(2))
                .frame(width:400)
        }
        HStack {
            Text("surface").frame(width:100)
            NumberPreview(Nombre(1327,2), .decimal(2), "m2", "surface")
               .frame(width:300)
        }
        HStack {
            Text("nombre < 1000").frame(width:100)
            NumberPreview(Nombre(1325,2), .decimal(3), "m", "estimation")
               .frame(width:300)
        }
        HStack {
            Text("nombre > 1000").frame(width:100)
            NumberPreview(Nombre(1784874782392925,4), .naturel, "km", "distance")
               .frame(width:400)
        }
    }.frame(width:520)
        .padding(20)
}




