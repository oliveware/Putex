//
//  FivePicker.swift
//  Putex
//
//  Created by Herve Crespel on 01/10/2025.
//

import SwiftUI

struct FivePicker: View {
    @Binding var tid: TID

    @Binding var four : Nivfour
    @Binding var five : Nivfive
    
    @Binding var level :Int

    var body:some View {
       // if zero.id == Nivzero().id {
            HStack {
                ScrollView {
                    VStack(alignment:.leading) {
                        ForEach($four.five) { item in
                          //   if edition {
                                 Button(action:{
                                     five = item.wrappedValue
                                   //  tid = TID([zero.id, item.id])
                                     level = 6
                                 })
                            {Text(item.wrappedValue.nom).frame(width:150, alignment: .center)}
                           // }
                        }
                    }
                }
              //  .frame(height:CGFloat(zero.one.count * (edition ? 20 : 10)))
                Spacer()
        }
    }
}
