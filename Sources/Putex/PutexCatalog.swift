//
//  Putex.swift
//  Xware
//
//  Created by Herve Crespel on 17/01/2021.
//

import SwiftUI

public struct PutexCatalog: View {
    @State var mot = Mot("","")
    @State var nompropre = "Boris"
    
    @State var index = 0
    @State var simple = 0
    @State var choix = 0
    
    public init() {}
   
    public var body: some View {
        VStack(alignment: .leading) {
           Text("Putex")
               .font(.title3)
               .frame(width: 250, height: 10, alignment: .leading)
               .foregroundColor(.green)
               .padding(.leading, 15)
               .padding(.bottom, 16)
               .offset(y:16)

            TabView(selection: $index) {
                TabView(selection: $simple) {
                    MotView($mot)
                        .tabItem { Text("mot") }.tag(0)
                    NomPropre($nompropre, "nom propre", "nom propre" )
                        .tabItem { Text("nom propre") }.tag(1)
                    Line(input:$nompropre)
                        .tabItem { Text("ligne") }.tag(2)
                }.tabItem { Text("simple") }.tag(0)
                
                Nombrex(Nombre())
                    .frame(alignment: .center)
                    .padding(5)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray, lineWidth: 1))
                    .tabItem { Text("nombres") }.tag(1)
                MontantDemo()
                   .tabItem {Text("montant")}.tag(5)
                TabView(selection: $choix) {
                    Choice(["un","deux","trois","quatre"],"choix")
                    .tabItem { Text("Choice") }.tag(1)
                  
                }.tabItem { Text("sélection") }.tag(2)
                
                Version()
                    .tabItem { Text("version") }.tag(3)
                OptionalPreview()
                    .tabItem { Text("optional") }.tag(4)
            }
        }
        .frame(width: 700, height: 400, alignment: .center)
    }
}

#Preview {
    PutexCatalog()
}
