//
//  FiveChoix.swift
//  Taxonomie
//
//  Created by Herve Crespel on 08/07/2025.
//

import SwiftUI

struct FiveChoix : View {
    @Binding var choix:Int
    var nivfour: Nivfour
    @Binding var nivfive: Nivfive
    
    var body:some View {
        if choix == 3 {
            GroupBox {
                ScrollView {
                    ForEach(nivfour.five){
                        item in
                        Button(action:{
                            nivfive = item
                        })
                        {Text(item.nom)}
                    }
                }
            }
        } else {
            Button(action:{
                choix = 3
                nivfive = Nivfive()
            })
            { Text(nivfive.nom) }
        }
    }
}
