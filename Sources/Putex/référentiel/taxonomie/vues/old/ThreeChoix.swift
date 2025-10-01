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
                        nivthree = item
                        if item.four.count > 0 {
                            choix = 4
                        }
                    })
                    {Text(item.nom)}
                }
            }
        } else {
                Button(action:{ choix = 3 })
                { Text(nivthree.nom) }
        }
    }
}

