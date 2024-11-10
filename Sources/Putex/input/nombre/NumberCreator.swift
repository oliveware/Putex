//
//  File.swift
//  
//
//  Created by Herve Crespel on 13/07/2024.
//

import SwiftUI

struct NumberCreator: View {
    
    @Environment(\.locale) var locale: Locale
    
    @Binding var nombre: Nombre
    @State var créé = Nombre(0)
    @State var creation : Bool = true
    @State var edition = true
    var fonte = Font.title
    @State private var entiere = ""
    @State private var negative = false
    @State private var decimale = ""
    @State var dot: String = ""
    var localedot : String = ""
    
    var set : NumberSet
    var decimal: Bool { (set != .naturel && set != .relatif) }
    
    init(_ nombre:Binding<Nombre>, _ set: NumberSet) {
        _nombre = nombre
        if nombre.wrappedValue.isNaN {
            creation = true
        }
        self.set = set
        localedot = locale.decimalSeparator ?? ","
    }
    
    var width: CGFloat {
        var length = (entiere + dot + decimale).count
        if negative { length += 2}
        if length < 10 { length = 10 }
        return CGFloat(length * 14)
    }
    
    var body: some View {
        if creation {
            creator
        } else {
           NumberView($nombre, set)
        }
    }
    
    var creator: some View {
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
                                }.disabled(decimal && entiere == "0")
                                    .frame(width:width)
                                
                                Text(
                                    (negative ? "-" : "") + " " + entiere + dot + decimale )
                                    .font(fonte)
                                    .frame(width:width)
                                HStack(spacing:2) {
                                    ForEach(5..<10) {
                                        digit in
                                        Button(action: {putin(String(digit))}) {Text(String(digit))}
                                    }
                                }.disabled(decimal && entiere == "0")
                                    .frame(width:width)
                            }
                            
                        }.padding(2)
                        
                        HStack {
                            Button("annuler") {cancel()}
                            Spacer()
                            Button("valider") { valider() }
                        }.frame(width:width)
                            .disabled(entiere == "" && decimale == "")
                    }
                    if decimal  {
                        Button(action: dotin ) {
                            Text(localedot)
                                .font(.title)
                                .offset(CGSize(width: 0, height: -7))
                                .frame(width:10)
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
    
    func dotin() {
        if decimal {
            dot = localedot
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
        print(nombre)
    }
    
    func cancel() {
        entiere = "" ; decimale = "" ;  negative = false
        nombre = Nombre() ; dot = ""
        creation = true
    }
    
    func valider() {
        decimale = set.normalize(decimale) ; dot = ""
        nombre = Nombre(entiere, decimale, negative)
        entiere = "" ; decimale = "" ;  negative = false
        creation = nombre.isNaN
    }
}

struct NumberCreatorPreview : View {
    @State var nombre = Nombre(12589)
    @State var creation = true
    var set : NumberSet = .naturel
    
    var body: some View {
        NumberCreator($nombre, set)
            .frame(width:300, height:200)
    }
}

#Preview("edit") {
    NumberCreatorPreview(set:.decimal(2))
}

#Preview("show") {
    NumberCreatorPreview(creation:false)
}
