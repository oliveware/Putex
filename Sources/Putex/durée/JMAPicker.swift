//
//  SwiftUIView.swift
//  
//
//  Created by Herve Crespel on 15/01/2024.
//

import SwiftUI

struct JMAPicker : View {
    var kindofdate: String
    @Binding var jma:JMA
    @Binding var modal: Bool
    
    @State var date = Date.now
    
    var body : some View {
        VStack(spacing:30) {
            Text("Replanifier la date de \(kindofdate)").font(.title3)
            DatePicker("nouvelle date", selection: $date, displayedComponents: .date)
                .frame(width: 200)
            Button("valider",  action:  planifier)
        }.padding(30)
    }
    
    func planifier() {
        modal = false
        jma = JMA(date)
    }
}


