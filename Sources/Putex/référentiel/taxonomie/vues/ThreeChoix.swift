//
//  ThreeVue.swift
//  Taxonomie
//
//  Created by Herve Crespel on 08/07/2025.
//
import SwiftUI

struct ThreeChoix : View {
    @Binding var choix:Int
    @Binding var nivtwo: Nivtwo
    @Binding var nivthree: Nivthree
    
    var body:some View {
        if choix == 3 {
            ScrollView {
                ForEach(nivtwo.three){
                    item in
                    Button(action:{
                        if nivthree == item {
                            choix = 4
                        } else {
                            nivthree = item
                        }
                    })
                    {Text(item.nom)}
                }
            }
        } else {
            if nivthree.nom != "" {
                Button(action:{ choix = 3 })
                { Text(nivthree.nom) }
            }
        }
    }
}

