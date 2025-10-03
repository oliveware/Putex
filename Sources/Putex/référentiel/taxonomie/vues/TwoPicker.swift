//
//  TwoPicker.swift
//  Putex
//
//  Created by Herve Crespel on 01/10/2025.
//

import SwiftUI

struct TwoPicker: View {
    @Binding var tid: TID
    @Binding var zero : Nivzero
    @Binding var one  : Nivone
    @Binding var two : Nivtwo
    
    @Binding var level :Int

    var body:some View {
       // if zero.id == Nivzero().id {
            HStack {
                ScrollView {
                    VStack(alignment:.leading) {
                        ForEach($one.two) { item in
                          //   if edition {
                                 Button(action:{
                                     two = item.wrappedValue
                                     tid = TID([zero.id, one.id, item.id])
                                     level = 3
                                     print("two : \(self)")
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

struct TwoPickerPreview : View {

    @State var zero = Taxonomy(besoins).items[0]
    @State var two = Nivtwo()
    @State var one  = Taxonomy(besoins).items[0].one[0]
    @State var tid = TID([0,0])
    @State var level = 0
    
    var edition = true
    
    var body:some View {
        TwoPicker( tid:$tid, zero:$zero, one:$one, two:$two, level:$level)
            .frame(width:600,height:300)
        HStack {
           // Text(Niveau(tid).nom)
            Text(one.nom)
            Text(two.nom)
           // Text(tid.show())
        }
    }
}

#Preview {
    TwoPickerPreview().padding()
}
