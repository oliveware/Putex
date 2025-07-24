//
//  Untitled.swift
//  Taxonomie
//
//  Created by Herve Crespel on 08/07/2025.
//
import SwiftUI

struct TwoChoix : View {
    @Binding var choix:Int
    @Binding var nivone: Nivone
    @Binding var nivtwo: Nivtwo

    var body:some View {
        if choix == 2 {
            ScrollView {
                ForEach(nivone.two){
                    item in
                    Button(action:{
                        if  nivtwo == item {
                            choix = 3
                        } else {
                            nivtwo = item
                        }
                    })
                    {Text(item.nom)}
                }
            }
        } else {
            if nivtwo.nom != "" {
                Button(action:{ choix = 2 })
                { Text(nivtwo.nom) }
            }
        }
    }
}
