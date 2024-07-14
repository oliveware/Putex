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
         //   NumberView($n, n.isnul, nil).tabItem { Text("multi") }.tag(0)
            NumberView($n , n.isnul, .naturel, "m3")
                .tabItem { Text("m3") }.tag(1)
            NumberView($n , n.isnul, .relatif)
                .tabItem { Text("relatif") }.tag(2)
            NumberView($n , n.isnul, .decimal(2), "€")
                .tabItem { Text("euro") }.tag(3)
        }
    }
}

struct Nombrex_Previews: PreviewProvider {
    static var previews: some View {
        Nombrex()
    }
}
