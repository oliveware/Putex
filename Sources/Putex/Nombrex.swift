//
//  Nombrex.swift
//  Xware
//
//  Created by Herve Crespel on 18/01/2021.
//

import SwiftUI

struct Nombrex: View {
    @State var n = Nombre()
    
    @State var index = 0
    
    var body: some View {
        TabView(selection: $index) {
            NumberView(nombre: $n, edition:!n.isNaN).tabItem { Text("vue") }.tag(0)
            NumberCreator($n , .naturel).tabItem { Text("naturel") }.tag(1)
            NumberCreator($n , .relatif).tabItem { Text("relatif") }.tag(2)
            NumberCreator($n , .decimal).tabItem { Text("decimal") }.tag(3)
        }
    }
}

struct Nombrex_Previews: PreviewProvider {
    static var previews: some View {
        Nombrex()
    }
}
