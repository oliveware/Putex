//
//  Nombrex.swift
//  Xware
//
//  Created by Herve Crespel on 18/01/2021.
//

import SwiftUI

struct Nombrex: View {
    
    var natural = Number( set : .naturel)
    var relative = Number(set: .relatif)
    var decimal = Number(set: .decimal)
    @State var index = 0
    
    var body: some View {
        TabView(selection: $index) {
            natural.tabItem { Text("naturel") }.tag(1)
            relative.tabItem { Text("relatif") }.tag(2)
            decimal.tabItem { Text("decimal") }.tag(3)
        }
    }
}

struct Nombrex_Previews: PreviewProvider {
    static var previews: some View {
        Nombrex()
    }
}
