//
//  FivePicker.swift
//  Putex
//
//  Created by Herve Crespel on 01/10/2025.
//

import SwiftUI

struct FivePicker: View {
    @Binding var tid: TID
    var zero   : Nivzero
    var one    : Nivone
    var two    : Nivtwo
    var three  : Nivthree
    @Binding var four   : Nivfour
    @Binding var five   : Nivfive
    
    init(_ tid:Binding<TID>, _ zero: Nivzero, _ one: Nivone, _ two: Nivtwo, _ three:Nivthree, _ four:Binding<Nivfour>, _ five:Binding<Nivfive>) {
        _tid = tid
        self.zero = zero
        self.one = one
        self.two = two
        self.three = three
        _four = four
        _five = five
    }

    var body:some View {
        VStack(alignment:.leading) {
            if five.id == Nivfive().id {
                HStack(alignment: .top) {
                    Text("Choisir un " + four.nom).padding(.bottom,10)
                        .padding(.trailing, 20)
                        .padding(.top,CGFloat(four.five.count * 9))
                    ScrollView {
                        VStack(alignment:.leading) {
                            ForEach($four.five) { item in
                                //   if edition {
                                Button(action:{
                                    five = item.wrappedValue
                                    tid = TID([zero.id, one.id, two.id, three.id, four.id, five.id])
                                })
                                {Text(item.wrappedValue.nom).frame(width:150, alignment: .center)}
                                // }
                            }
                        }
                    }
                    //  .frame(height:CGFloat(zero.one.count * (edition ? 20 : 10)))
                    Spacer()
                }.padding(.leading, 150)
            } else {
                
            }
        }
    }
}
