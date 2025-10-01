//
//  FourVue.swift
//  Taxonomie
//
//  Created by Herve Crespel on 08/07/2025.
//
import SwiftUI

struct FourChoix : View {
    @Binding var choix:Int
    @Binding var nivthree: Nivthree
    @Binding var nivfour: Nivfour

    var body:some View {
        if choix == 4 {
            ScrollView {
                ForEach(nivthree.four){
                    item in
                    Button(action:{
                        nivfour = item
                        if item.five.count > 0 {
                            choix = 5
                        }
                    })
                    {Text(item.nom)}
                }
            }
        } else {
                Button(action:{ choix = 4 })
                { Text(nivfour.nom) }
        }
    }
}
