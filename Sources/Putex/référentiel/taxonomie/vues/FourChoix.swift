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
                        if  nivfour == item {
                            choix = 5
                        } else {
                            nivfour = item
                        }
                    })
                    {Text(item.nom)}
                }
            }
        } else {
            if nivfour.nom != "" {
                Button(action:{ choix = 4 })
                { Text(nivfour.nom) }
            }
        }
    }
}
