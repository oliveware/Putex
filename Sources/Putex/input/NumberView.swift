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
        var nbc = nombre.enchiffres().count
        if nbc < 4 { nbc = 4 }
        return CGFloat(nbc * 15)
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
                        if nombre.decimales != "" {
                            Text(".")
                            TextField("", text:$nombre.decimales)
                        }
                        Text(classifier)
                    }.frame(width:width)
                    Button(action: {edition = false})
                    {Image(systemName: "checkmark")}
                       
                }
                
                
            } else {
                Button(action:{
                    if nombre.isnul {creation = true} else {edition = true}
                            })
                {
                    Text(nombre.enchiffres() + " " + classifier)
                        .font(.title)
                        .frame(width:width*1.5)
                }
            }
        }
    }
    
    func clear() {
        nombre = Nombre()
        edition = false
        creation = true
    }
}

struct NumberCreator: View {
    
    @Binding var nombre: Nombre
    @Binding var creation : Bool
    
    var fonte = Font.title
    @State private var entiere = ""
    @State private var negative = false
    @State private var decimale = ""
    @State private var dot = ""
    
    var set : NumberSet
    var decimal: Bool { (set != .naturel && set != .relatif) }
    
    init(_ nombre:Binding<Nombre>,_ creation:Binding<Bool>, _ set: NumberSet) {
        self._nombre = nombre
        self._creation = creation
        self.set = set
    }
    
    var width: CGFloat {
        var length = (entiere + dot + decimale).count
        if negative { length += 2}
        if length < 10 { length = 10 }
        return CGFloat(length * 14)
    }
    
    var body: some View {
        HStack(alignment:.center, spacing:5) {
            if entiere != "" {
              //  Button(action: {clear()})
              //  {Image(systemName: "trash")}
                
                if set != .naturel && (entiere != "0" || decimale != "") {
                    Button(action: {negative.toggle()})
                    {Text("\(negative ? "+" : "-")")}
                }
            }
            
            VStack {
                
                HStack {
                    VStack {
                        GroupBox {
                            VStack {
                                HStack(spacing:2) {
                                    if decimal || entiere.count > 0 {
                                        Button(action: {putin("0")}) {Text("0")}
                                    }
                                    ForEach(1..<5) {
                                        digit in
                                        Button(action: {putin(String(digit))}) {Text(String(digit))}
                                    }
                                }.disabled(decimal && dot == "" && entiere == "0")
                                    .frame(width:width)
                                
                                Text("\(negative ? "-" : "") \(entiere)\(dot)\(decimale)")
                                    .font(fonte)
                                    .frame(width:width)
                                HStack(spacing:2) {
                                    ForEach(5..<10) {
                                        digit in
                                        Button(action: {putin(String(digit))}) {Text(String(digit))}
                                    }
                                }.disabled(decimal && dot == "" && entiere == "0")
                                    .frame(width:width)
                            }
                            
                        }.padding(2)
                        
                        HStack {
                            Button("annuler") {clear()}
                            Spacer()
                            Button("valider") { valider() }
                        }.frame(width:width)
                        .disabled(entiere == "" && decimale == "")
                    }
                    if decimal && dot == "" {
                        VStack {

                            Button(action: {dotin(",")}) {Text(",")}
                            
                            Button(action: {dotin(".")}) {Text(".")}
                        }
                    }
                }
                  /*  if set != .decimal {
                        let moins = sign == "" ? "" : "moins "
                        Text(moins + Français().lit(entiere))
                    }*/
                
                
            }
        }
    }
    
    func dotin(_ dot:String){
        if decimal {
            self.dot = dot
            if entiere.count == 0 { entiere = "0"}
        }
    }
    
    func putin(_ digit:String){
        if digit == "0" {
            if dot == "" {
                if entiere == "" {
                    if decimal { entiere = "0"}
                } else {
                    if (entiere != "0"  && entiere.count < 17) {entiere += digit}
                }
            } else {
                decimale += digit
            }
        } else {
            if dot == "" {
                if entiere.count < 17 {entiere += digit}
            } else {
                decimale += digit
            }
        }
        if set == .naturel {
            if let naturel = Int(entiere) {
                nombre = Nombre(naturel)
            } else {
                print ("chiffres erronés")
            }
        } else {
            if set == .relatif {
                nombre = Nombre(entiere, "", negative)
            } else {
                if decimale.count == set.nbdec {
                    valider()
                } else {
                    nombre = Nombre(entiere, decimale, negative)
                }
            }
        }
        //nombre.entiere = Int(entiere)!
        //nombre.decimales = decimale
        print(nombre)
    }
    
    func clear() {
        entiere = "" ; decimale = "" ; dot = "" ; negative = false
        nombre = Nombre()
        creation = true
    }
    
    func valider() {
        decimale = set.normalize(decimale)
        nombre = Nombre(entiere, decimale, negative)
        entiere = "" ; decimale = "" ; dot = "" ; negative = false
        creation = false
    }
}


#Preview ("décimal création") {
    NumberView(.constant(Nombre()), true, .decimal(2))
        .frame(width:400, height:250)
}

#Preview ("décimal édition") {
    NumberView(.constant(Nombre(182925,2)), false, .decimal(4), "€")
        .frame(width:400, height:250)
}
