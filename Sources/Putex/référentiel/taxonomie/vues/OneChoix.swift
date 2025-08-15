//
//  OneVue.swift
//  Taxonomie
//
//  Created by Herve Crespel on 08/07/2025.
//
import SwiftUI

struct OneChoix : View {
    @Binding var choix:Int
    @Binding var nivzero: Nivzero
    @Binding var nivone: Nivone
    
    var body:some View {
        if choix == 1 {
            ScrollView {
                ForEach(nivzero.one){
                    item in
                    Button(action:{
                        nivone = item
                        if item.two.count > 0 {
                            choix = 2
                        }
                    })
                    {Text(item.nom)}
                }
            }
        } else {
            Button(action:{ choix = 1 })
            { Text(nivone.nom) }
        }
    }
}
