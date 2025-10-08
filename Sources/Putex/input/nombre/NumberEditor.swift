//
//  NumberEditor.swift
//  Putex
//
//  Created by Herve Crespel on 18/10/2024.
//

import SwiftUI

struct NumberEditor: View {
    //@Environment(\.locale) var locale: Locale
    //var localedot : String {locale.decimalSeparator ?? ","}
    var dot = ","
    
    @Binding var nombre: Nombre
    @State private var decimales : Int?
    @State var nbdec : Int
    var classifier: String = ""
    var autovalide = false
    
    var entierestring:String {
        if nombre.entiere == nil {
            return ""
        } else {
            return String(nombre.entiere!)
        }
    }
    func width(_ chiffres:Int?) -> CGFloat {
        if let string = chiffres {
            let width  = CGFloat((String(string).count + 1) * 8)
            return width > 25 ? width : 25
        } else {
            return 25
        }
    }
    
    public init(_ nombre:Binding<Nombre>, _ set: NumberSet, _ classifier:String = "") {
        _nombre = nombre
        if let decim = nombre.wrappedValue.decimales {
            if let deci = Int(decim) {
                decimales = deci
            }
        } else {
            decimales = nil
        }
        nbdec = set.nbdec
        self.classifier = classifier
      //  localedot = locale.decimalSeparator ?? ","
    }
    
    var body: some View {
        HStack(spacing:0){
            TextField("", value:$nombre.entiere, format:.number)
                .frame(width: width($nombre.wrappedValue.entiere), alignment: .trailing )
            if nombre.decimales != ""  || nbdec > 0 {
                Text(dot)
                TextField("", value:$decimales, format:.number)
                    .frame(width: width(decimales) )
                    .onChange(of: decimales, {
                        if let decim = decimales {
                            nombre.decimales = String(decim)
                        } else {
                            nombre.decimales = nil
                        }})
            }
            Text(" " + classifier)
        }//.frame(minWidth:showidth + 20)
    }
    
}

struct NumberEditPreview : View {
    @State var nombre : Nombre
    var set : NumberSet = .naturel
    var classifier = ""
    @State var autovalide = false
    
    public init(_ nombre:Nombre, _ edition:Bool, _ set: NumberSet, _ classifier:String = "") {
        self.nombre = nombre
        self.set = set
        self.classifier = classifier
    }
    
    var body : some View {
        HStack {
            NumberEditor($nombre, set, classifier)

        }
            //.frame(width:200, height: 100)
    }
}


#Preview ("décimal") {
    NumberEditPreview(Nombre(), true, .decimal(2))
        .frame(width:400, height:250)
}

#Preview ("entier") {
    NumberEditPreview(Nombre(), true, .naturel)
        .frame(width:400, height:250)
}

#Preview ("mesure") {
    NumberEditPreview(Nombre(), true, .decimal(2), "m3")
        .frame(width:400, height:250)
}

