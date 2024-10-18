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
    @Binding var creation : Bool
    @State var set : NumberSet
    var classifier: String = ""
    var autovalide = false
    
    @State var dot = ""
    var localedot : String = ""
    
    
    public init(_ nombre:Binding<Nombre>, _ edition:Binding<Bool>, _ creation:Binding<Bool>,_ set: NumberSet, _ classifier:String = "", _ autovalide:Bool = false) {
        _nombre = nombre
        _edition = edition
        _creation = creation
        self.set = set
        self.classifier = classifier
        self.autovalide = autovalide
        localedot = locale.decimalSeparator ?? ","
    }
    var showidth:CGFloat{
        var nbc = nombre.enchiffres().count + classifier.count + 1
        if nbc < 5 { nbc = 5 }
        return CGFloat(nbc * 8)
    }
    
    
    public var body: some View {
        if edition {
                HStack{
                    Button(action: clear)
                    {Image(systemName: "trash")}
                    
                    NumberEditor($nombre, set, classifier)
                   .frame(minWidth:showidth + 20)
                    
                    if autovalide {
                        Button(action: {edition = false})
                        {Image(systemName: "checkmark")}
                    }
                }
        } else {
            Button(action:{
                edition = true
            })
            {
                Text(nombre.enchiffres(localedot) + " " + classifier)
                    .font(.title2)
            }.frame(width:showidth*1.7)
        }
    }
    
    func clear() {
        nombre = Nombre()
        dot = ""
        edition = false
        creation = true
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
            NumberView($nombre, $edition, $creation, set, classifier)
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


