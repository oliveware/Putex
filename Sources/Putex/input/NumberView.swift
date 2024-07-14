//
//  Number.swift
//  Xware
//
//  Created by Herve Crespel on 18/01/2021.
//

import SwiftUI

public enum NumberSet: Equatable {
    
    case naturel
    case relatif
    case decimal(Int)
    
    var nbdec: Int {
        switch self {
        case .naturel, .relatif:
            return 0
        case .decimal(2):
            return 2
        case .decimal(4):
            return 4
        default:
            return 0
        }
    }
    
    func normalize(_ decimale:String) -> String {
        if self == .naturel || self == .relatif {
            return ""
        } else {
            let nbdecimales = decimale.count
            var norm = decimale
            if nbdecimales != self.nbdec {
                if nbdecimales < self.nbdec {
                    // ajouter les zéros manquants
                    for _ in 0..<self.nbdec-nbdecimales {
                        norm = norm + "0"
                    }
                } else {
                    // enlever les décimales superflues
                    let index = decimale.index(decimale.startIndex, offsetBy: self.nbdec)
                    norm = String(decimale[..<index])
                }
            }
            return norm
        }
    }
}

public struct NumberView: View {
    @Binding var nombre: Nombre
    @State var edition = false
    @State var creation = false
    @State var set : NumberSet
    var classifier:String = ""
    
    
    public init(_ nombre:Binding<Nombre>, _ creation:Bool, _ set: NumberSet, _ classifier:String = "") {
        self._nombre = nombre
        self.creation = creation
        self.set = set
        self.classifier = classifier
    }
    var width:CGFloat{
        var nbc = nombre.enchiffres().count + classifier.count + 1
        if nbc < 4 { nbc = 4 }
        return CGFloat(nbc * 8)
    }
    
    public var body: some View {
        if creation {

            NumberCreator($nombre, $creation, set)

        } else {
            if edition {
                HStack{
                    Button(action: {clear()})
                    {Image(systemName: "trash")}
                       
                    HStack(spacing:0){
                        TextField("", value:$nombre.entiere, format:.number)
                            .frame(width:CGFloat(String(nombre.entiere).count) * 10 )
                        if nombre.decimales != "" {
                            Text(".")
                            TextField("", text:$nombre.decimales)
                                .frame(width:CGFloat(nombre.decimales.count) * 11 )
                        }
                        Text(" " + classifier)
                    }.frame(width:width + 20)
                    Button(action: {edition = false})
                    {Image(systemName: "checkmark")}
                       
                }
                
                
            } else {
                Button(action:{
                    if nombre.isnul {creation = true} else {edition = true}
                            })
                {
                    Text(nombre.enchiffres() + " " + classifier)
                        .font(.title2)
                        
                }.frame(width:width*1.7)
            }
        }
    }
    
    func clear() {
        nombre = Nombre()
        edition = false
        creation = true
    }
}



struct NumberPreview : View {
    @State var nombre : Nombre
    var creation = false
    var set : NumberSet = .naturel
    var classifier = ""
    
    public init(_ nombre:Nombre, _ creation:Bool, _ set: NumberSet, _ classifier:String = "") {
        self.nombre = nombre
        self.creation = creation
        self.set = set
        self.classifier = classifier
    }
    
    var body : some View {
        NumberView($nombre, creation, set, classifier)
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


