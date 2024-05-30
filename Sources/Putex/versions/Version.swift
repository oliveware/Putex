//
//  Version.swift
//  Xware
//
//  Created by Herve Crespel on 17/01/2021.
//

import SwiftUI

struct Version: View {
    
    var edition = Edition(s: 2, f: 5, m: 7)
    var revision = Revision()
    var palier = Palier()
    
    let f = ["Edition","Révision","Palier"]
    
    @State var index = 0
    
    var body: some View {
            TabView(selection: $index) {
                edition.tabItem { Text(f[0]) }.tag(1)
                revision.tabItem { Text(f[1]) }.tag(2)
                palier.tabItem { Text(f[2]) }.tag(3)
            }
            .background(Color.init(red: 0.057, green: 0.169, blue: 0.12, opacity: 1))
    }
}


struct Version_Previews: PreviewProvider {
    static var previews: some View {
        Version()
    }
}
