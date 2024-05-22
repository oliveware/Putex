//
//  Number.swift
//  Xware
//
//  Created by Herve Crespel on 18/01/2021.
//

import SwiftUI

struct Number: View {
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
    var set = Set.naturel
    
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
    }
    
    func clear() {
        entiere = "" ; decimale = "" ; dot = "" ; sign = ""
    }
}

struct Number_Previews: PreviewProvider {
    static var previews: some View {
        Nombrex()
    }
}
