//
//  SwiftUIView.swift
//  
//
//  Created by Herve Crespel on 15/01/2024.
//

import SwiftUI

public struct JMAPicker : View {
    var prompt: String = "Replanifier la date"
    var kindofdate: String = ""
    @Binding var jma:JMA
    @State private var edition: Bool = false
    
    @State private var date = Date.now
    
    public init(_ date:Binding<JMA>, _ p:String = "", _ kod:String = "") {
        _jma = date
        prompt = p
        kindofdate = kod
    }
    
    
    public var body : some View {
        if edition {
            VStack(spacing:5) {
                if prompt != "" {
                    Text( prompt).font(.title3)
                }
                DatePicker("\(kindofdate)", selection: $date, displayedComponents: .date)
                    .frame(width: 200)
                Button("valider",  action:  planifier)
                    .padding(.top,10)
            }.padding(30)
        } else {
            Button("\(kindofdate) \(jma.entexte)", action:{edition = true})
        }
    }
    
    func planifier() {
        edition = false
        jma = JMA(date)
    }
}

struct JMAPreview : View {
    @State var date: JMA = JMA(Date.now)
    var body : some View {
        JMAPicker($date)
            .frame(width:200, height: 100)
    }
}

#Preview {
    JMAPreview()
}


/*
 var body : some View {
     VStack(spacing:30) {
         Text("Replanifier la date de \(kindofdate)").font(.title3)
         DatePicker("nouvelle date", selection: $date, displayedComponents: .date)
             .frame(width: 200)
         Button("valider",  action:  planifier)
     }.padding(30)
 }
 */
