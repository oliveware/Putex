//
//  FiveChoix.swift
//  Taxonomie
//
//  Created by Herve Crespel on 08/07/2025.
//

import SwiftUI

struct FiveChoix : View {
    @Binding var choix:Int
    @Binding var nivfour: Nivfour
    @Binding var nivfive: Nivfive
    
    var body:some View {
        if choix == 5 {
            ScrollView {
                ForEach(nivfour.five){
                    item in
                    Button(action:{
                        if nivfive == item {
                            choix = 6
                        } else {
                            nivfive = item
                        }
                    })
                    {Text(item.nom)}
                }
            }
        } else {
            if nivfive.nom != "" {
                Button(action:{ choix = 5 })
                { Text(nivfive.nom) }
            }
        }
    }
}
