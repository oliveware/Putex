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
    var classifier: String = ""
    var prompt :String?
    
    @State var dot = ""
    var localedot : String {locale.decimalSeparator ?? ","}
    
    
    public init(_ nombre:Binding<Nombre>, _ set: NumberSet, _ classifier:String = "",_ prompt:String? = nil) {
        _nombre = nombre

        self.set = set
        self.classifier = classifier
        self.prompt = prompt
    }
 /*   public init(_ surface:Binding<Surface>) {
        _nombre = surface.nombre
        set = .decimal(2)
        classifier = surface.wrappedValue.unit.symbol
        prompt = "surface"
    }*/
    public init(_ mesure:Binding<Mesure>) {
        _nombre = mesure.nombre
        set = mesure.wrappedValue.unit.numberset
        classifier = mesure.wrappedValue.unit.symbol
        prompt = mesure.wrappedValue.unit.label
    }

    
    var showidth:CGFloat{
        var nbc = nombre.enchiffres().count + classifier.count + 1
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
                    
                    if let prompt = prompt {
                        Text(prompt)
                    }
                    
                    NumberEditor($nombre, set, classifier)
                   .frame(minWidth:showidth + 20)
                    
                    Button(action: {edition = false})
                    {Image(systemName: "checkmark")}
                }
        } else {
            HStack {
                if let prompt = prompt {
                    Text(prompt)
                }
                if nombre.isNaN {
                    Text ("à définir")
                } else {
                    Text(nombre.enchiffres(localedot) + " " + classifier)
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
    var classifier = ""
    
    public init(_ nombre:Nombre, _ set: NumberSet, _ classifier:String = "") {
        self.nombre = nombre
        self.set = set
        self.classifier = classifier
    }
    
    var body : some View {
        HStack {
            NumberView($nombre, set, classifier, "prompt")
        }
            //.frame(width:200, height: 100)
    }
}


#Preview ("décimal création") {
    NumberPreview(Nombre(), .decimal(2))
        .frame(width:400, height:250)
}

#Preview ("<1000 édition") {
        NumberPreview(Nombre(1325,2), .decimal(2), "€")
            .frame(width:400, height:250)
}

#Preview (">1000 édition") {
        NumberPreview(Nombre(1784874782392925,4), .decimal(4), "km")
            .frame(width:400, height:250)
}


