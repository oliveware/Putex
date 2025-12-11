//
//  Putex.swift
//  Xware
//
//  Created by Herve Crespel on 17/01/2021.
//

import SwiftUI


public struct PutexCatalog: View {
    
    @State var index = 0
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
                OptionalPreview("option")
                    .tabItem { Text("optional") }.tag(4)
            }
        }
        .frame(width: 700, height: 400, alignment: .center)
    }
}

#Preview {
    PutexCatalog()
}
