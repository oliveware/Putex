//
//  OneVue.swift
//  Taxonomie
//
//  Created by Herve Crespel on 08/07/2025.
//
import SwiftUI

struct OneChoix : View {
    @Binding var choix:Int
    var nivzero: Nivzero
    @Binding var nivone: Nivone
    
    var body:some View {
        if choix == 1 {
            ScrollView {
                ForEach(nivzero.one){
                    item in
                    Button(action:{ nivone = item })
                    {Text(item.nom)}
                }
            }
        } else {
            Button(action:{ choix = 1 })
            { Text(nivone.nom) }
        }
    }
}
