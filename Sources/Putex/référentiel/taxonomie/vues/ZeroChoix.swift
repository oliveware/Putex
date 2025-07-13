//
//  ZeroVue.swift
//  Taxonomie
//
//  Created by Herve Crespel on 08/07/2025.
//
import SwiftUI

struct ZeroChoix : View {
    @Binding var choix:Int
    @Binding var nivzero : Nivzero
    var set : Taxonomy
    
    var body:some View {
        if choix == 0 {
            ScrollView {
                ForEach(set.items){
                    item in
                    Button(action:{ nivzero = item })
                    {Text(item.nom)}
                }
            }
        } else {
            Button(action:{
                choix = 0
            })
            { Text(nivzero.nom) }
        }
    }
}
