//
//  File.swift
//  
//
//  Created by Herve Crespel on 13/07/2024.
//

import SwiftUI

struct NumberCreator: View {
    
    @Binding var nombre: Nombre
    @Binding var creation : Bool
    
    var fonte = Font.title
    @State private var entiere = ""
    @State private var negative = false
    @State private var decimale = ""
    @Binding var dot: String
    
    var set : NumberSet
    var decimal: Bool { (set != .naturel && set != .relatif) }
    
    init(_ nombre:Binding<Nombre>,_ creation:Binding<Bool>, _ set: NumberSet, _ dot:Binding<String>) {
        self._nombre = nombre
        self._creation = creation
        self.set = set
        _dot = dot
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
                                }.disabled(decimal && dot != "," && dot != "." && entiere == "0")
                                    .frame(width:width)
                                
                                Text("\(negative ? "-" : "") \(entiere)\(dot)\(decimale)")
                                    .font(fonte)
                                    .frame(width:width)
                                HStack(spacing:2) {
                                    ForEach(5..<10) {
                                        digit in
                                        Button(action: {putin(String(digit))}) {Text(String(digit))}
                                    }
                                }.disabled(decimal && dot != "," && dot != "." && entiere == "0")
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
                    if decimal && dot != "," && dot != "." {
                        VStack {

                            Button(action: {dotin(",")}) {Text(",").frame(width:20)}
                            
                            Button(action: {dotin(".")}) {Text(".").frame(width:20)}
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
