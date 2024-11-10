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
    @Binding var edition : Bool
    @State var set : NumberSet
    var classifier: String = ""
    var autovalide = false
    var prompt :String?
    
    @State var dot = ""
    var localedot : String {locale.decimalSeparator ?? ","}
    
    
    public init(_ nombre:Binding<Nombre>, _ edition:Binding<Bool>, _ set: NumberSet, _ classifier:String = "",_ prompt:String? = nil, _ autovalide:Bool = false) {
        _nombre = nombre
        _edition = edition

        self.set = set
        self.classifier = classifier
        self.prompt = prompt
        self.autovalide = autovalide
    }
    public init(_ surface:Binding<Surface>, _ edition:Binding<Bool>) {
        _nombre = surface.nombre
        _edition = edition
        set = .decimal(2)
        classifier = surface.wrappedValue.unit.symbol
        prompt = "surface"
        autovalide = true
    }
    
    var showidth:CGFloat{
        var nbc = nombre.enchiffres().count + classifier.count + 1
        if nbc < 5 { nbc = 5 }
        return CGFloat(nbc * 8)
    }
    
    
    public var body: some View {
        if edition {
                HStack{
                    if !nombre.isnul {
                        Button(action: clear)
                        {Image(systemName: "eraser")}
                    }
                    
                    if let prompt = prompt {
                        Text(prompt)
                    }
                    
                    NumberEditor($nombre, set, classifier)
                   .frame(minWidth:showidth + 20)
                    
                    if autovalide {
                        Button(action: {edition = false})
                        {Image(systemName: "checkmark")}
                    }
                }
        } else {
            HStack {
                if let prompt = prompt {
                    Text(prompt)
                }
              /*  Button(action:{
                    edition = true
                })
                {*/
                    Text(nombre.enchiffres(localedot) + " " + classifier)
                        .font(.title3)
               // }.frame(width:showidth*1.7)
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
    @State var edition = false
    @State var creation = false
    var set : NumberSet = .naturel
    var classifier = ""
    @State var autovalide = false
    
    public init(_ nombre:Nombre, _ edition:Bool, _ set: NumberSet, _ classifier:String = "") {
        self.nombre = nombre
        self.edition = edition
        self.set = set
        self.classifier = classifier
        creation = nombre.isnul
    }
    
    var body : some View {
        HStack {
            NumberView($nombre, $edition, set, classifier, "prompt")
            if !autovalide && edition {
                Button(action: {edition = false})
                {Image(systemName: "checkmark")}
            }
        }
            //.frame(width:200, height: 100)
    }
}


#Preview ("décimal création") {
    NumberPreview(Nombre(), true, .decimal(2))
        .frame(width:400, height:250)
}

#Preview ("<1000 édition") {
        NumberPreview(Nombre(1325,2), false, .decimal(2), "€")
            .frame(width:400, height:250)
}

#Preview (">1000 édition") {
        NumberPreview(Nombre(1784874782392925,4), false, .decimal(4), "km")
            .frame(width:400, height:250)
}


