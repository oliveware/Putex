//
//  OnePicker.swift
//  Putex
//
//  Created by Herve Crespel on 30/09/2025.
//

import SwiftUI

struct OnePicker: View {
    @Binding var tid: TID
    @Binding var zero : Nivzero
    @Binding var one  : Nivone
    
    @Binding var level :Int

    var body:some View {
       // if zero.id == Nivzero().id {
            HStack {
                ScrollView {
                    VStack(alignment:.leading) {
                        ForEach($zero.one) { item in
                          //   if edition {
                                 Button(action:{
                                     one = item.wrappedValue
                                     tid = TID([zero.id, item.id])
                                     level = 2
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



    


