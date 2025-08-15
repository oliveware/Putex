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
                        nivtwo = item
                        if item.three.count > 0 {
                            choix = 3 }
                    })
                    {Text(item.nom)}
                }
            }
        } else {
                Button(action:{ choix = 2 })
                { Text(nivtwo.nom) }
        }
    }
}
