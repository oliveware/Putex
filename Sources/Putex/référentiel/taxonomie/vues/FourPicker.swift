//
//  Untitled.swift
//  Putex
//
//  Created by Herve Crespel on 01/10/2025.
//

import SwiftUI

struct FourPicker: View {
    @Binding var tid: TID
    @Binding var zero : Nivzero
    @Binding var one  : Nivone
    @Binding var two : Nivtwo
    @Binding var three : Nivthree
    @Binding var four: Nivfour
    
    @Binding var level :Int

    var body:some View {
       // if zero.id == Nivzero().id {
            HStack {
                ScrollView {
                    VStack(alignment:.leading) {
                        ForEach($three.four) { item in
                          //   if edition {
                                 Button(action:{
                                     four = item.wrappedValue
                                   //  tid = TID([zero.id, item.id])
                                     level = 5
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

struct FourPickerPreview : View {
    @State var zero = Taxonomy(besoins).items[0]
    @State var one = Taxonomy(besoins).items[0].one[0]
    @State var two = Taxonomy(besoins).items[0].one[0].two[1]
    @State var three =  Taxonomy(besoins).items[0].one[0].two[1].three[0]
    @State var four = Nivfour()
    @State var tid = TID()
    @State var level = 0
    
    var edition = true
    
    var body:some View {
        FourPicker( tid:$tid, zero:$zero, one:$one, two:$two, three:$three, four:$four, level:$level)
            .frame(width:600,height:300)
        HStack {
            Text(Niveau(tid).nom)
            Text(four.nom)
            Text(tid.show())
        }
    }
}

#Preview {
    FourPickerPreview().padding()
}
