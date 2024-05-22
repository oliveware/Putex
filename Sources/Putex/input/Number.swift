//
//  Number.swift
//  Xware
//
//  Created by Herve Crespel on 18/01/2021.
//

import SwiftUI

struct Nombre {
    var entiere:Int
    var decimales:Int?
    var base = 10
    
    var isNaN: Bool {
        entiere == 0 && decimales == nil
    }
    
    init() {
        entiere = 0
    }
    init(_ e:Int, _ d:Int = 0) {
        entiere = e
        if d > 0 { decimales = d }
    }
    
    init(_ e:String, _ sign:String = "", _ d:String = "") {
        entiere = Int(e) ??  0
        if sign == "-" { entiere = -entiere }
        if d != "" {
            let dec = Int(d) ?? 0
            if sign == "-" {
                decimales = -dec
            } else {
                decimales = dec
            }
        }
    }
    
    var cents : (c:Int, div:Int) {
        if decimales == nil {
            return (c:entiere, div:1)
        } else {
            let dec = String(decimales!)
            var div = 1
            for _ in 0..<dec.count { div *= base }
            return (c:Int(String(entiere) + dec)!, div:div)
        }
    }
    
    func enchiffres(_ dot:String = ",") -> String {
        let chiffres = String(entiere)
        if let dec = decimales {
            return chiffres + dot + String(dec)
        } else {
            return chiffres
        }
    }
}

struct NumberView: View {
    @Binding var nombre: Nombre
    @State var edition = false
    @State var creation : NumberCreator.Set?
    
    var body: some View {
        if !edition {
            if creation == nil {
                HStack {
                    Button("naturel") {creation = .naturel}
                    Button("relatif") {creation = .relatif}
                    Button("décimal") {creation = .decimal}
                }
            } else {
                VStack{
                    NumberCreator($nombre, creation!)
                    Button("valider") {edition = true}
                }
            }
        } else {
            HStack(spacing:0){
                Button(action: {clear()})
                {Image(systemName: "trash")}
                TextField("", value:$nombre.entiere, format:.number)
                if nombre.decimales != nil {
                    Text(".")
                    TextField("", value:$nombre.decimales, format:.number)
                }
            }
            .frame(minWidth:200)
        }
    }
    
    func clear() {
        nombre = Nombre()
        edition = false
        creation = nil
    }
}

struct NumberCreator: View {
    
    @Binding var nombre: Nombre
    
    var fonte = Font.title
    @State private var entiere = ""
    @State private var sign = ""
    @State private var decimale = ""
    @State private var dot = ""
    
    
    enum Set {
        case naturel
        case relatif
        case decimal
    }
    var set : Set
    
    init(_ nombre:Binding<Nombre>, _ set: Set) {
        self._nombre = nombre
        self.set = set
    }
    
    var width: CGFloat {
        var length = entiere.count + dot.count + decimale.count
        if sign != "" { length += 2}
        return CGFloat(length * 15)
    }
    
    var body: some View {
        HStack {
            if entiere != "" {
                Button(action: {clear()})
                {Image(systemName: "trash")}
                
                if set != .naturel && (entiere != "0" || decimale != "") {
                    Button(action: {sign = sign == "" ? "-" : ""})
                    {Text("\(sign == "" ? "-" : "+")")}
                }
            }
            
            VStack {
                
                HStack {
                    GroupBox {
                        VStack {
                            HStack {
                                if set == .decimal || entiere.count > 0 {
                                    Button(action: {putin("0")}) {Text("0")}
                                }
                                ForEach(1..<5) {
                                    digit in
                                    Button(action: {putin(String(digit))}) {Text(String(digit))}
                                }
                            }.disabled(set == .decimal && dot == "" && entiere == "0")
                            
                            Text("\(sign) \(entiere)\(dot)\(decimale)")
                                .font(fonte)
                                .frame(width:width)
                            HStack {
                                ForEach(5..<10) {
                                    digit in
                                    Button(action: {putin(String(digit))}) {Text(String(digit))}
                                }
                            }.disabled(set == .decimal && dot == "" && entiere == "0")
                        }
                        
                    }.padding(10)
                    if set == .decimal && dot == "" {
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
        if set == .decimal {
            self.dot = dot
            if entiere.count == 0 { entiere = "0"}
        }
    }
    
    func putin(_ digit:String){
        if digit == "0" {
            if dot == "" {
                if entiere == "" {
                    if set == .decimal { entiere = "0"}
                } else {
                    if entiere != "0" {entiere += digit}
                }
            } else {
                decimale += digit
            }
        } else {
            if dot == "" {
                entiere += digit
            } else {
               decimale += digit
            }
        }
        nombre = Nombre(entiere, sign, decimale)
        print(nombre)
    }
    
    func clear() {
        entiere = "" ; decimale = "" ; dot = "" ; sign = ""
        nombre = Nombre ()
    }
}

struct Number_Previews: PreviewProvider {
    static var previews: some View {
        NumberView(nombre:.constant(Nombre()))
    }
}
