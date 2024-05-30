//
//  Palier.swift
//  Xware
//
//  Created by Herve Crespel on 18/01/2021.
//

import SwiftUI

struct Palier: View {
    
    @State private var comment = ""
    @State var uValue : Int = 1
    @State var vValue : Int = 0
   
    var body: some View {

        VStack(alignment: .center)
         {
                HStack {
                    Button(action: {palier()}) {
                        Text("Palier")
                    }
                     Text("P")
                     Text(String(uValue))
                    if vValue < 4 {
                    Button(action: {vague()}) {
                        Text("Vague")
                    }}
                    Text(comment)
                        .frame(width: 200, height: 200, alignment: .center)
                }
                .frame(width: 450, height: 70, alignment: .center)
                
                if vValue > 0 {
                    Vague(palier:uValue,vague:1)
                }
                if vValue > 1 {
                    Vague(palier:uValue,vague:2)
                }
                if vValue > 2 {
                    Vague(palier:uValue,vague:3)
                }
                if vValue > 3 {
                    Vague(palier:uValue,vague:4)
                }
                
            }
            .frame(width: 500, height: 400, alignment: .center)


    }


    func palier() {
        uValue += 1
        vValue = 0
        comment = "nouveau palier planifié"
    }
    func vague() {
        vValue += 1
        comment = "nouveau déploiement ajouté au palier"
    }

}

struct Palier_Previews: PreviewProvider {
    static var previews: some View {
        Palier(uValue:5,vValue:3)
    }
}
