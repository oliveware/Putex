//
//  ThreePicker.swift
//  Putex
//
//  Created by Herve Crespel on 01/10/2025.
//
import SwiftUI

struct ThreePicker: View {
    @Binding var tid: TID
    @Binding var zero : Nivzero
    @Binding var one  : Nivone
    @Binding var two : Nivtwo
    @Binding var three : Nivthree
    
    @Binding var level :Int

    var body:some View {
       // if zero.id == Nivzero().id {
            HStack {
                ScrollView {
                    VStack(alignment:.leading) {
                        ForEach($two.three) { item in
                          //   if edition {
                                 Button(action:{
                                     three = item.wrappedValue
                                     tid = TID([zero.id, one.id, two.id, item.id])
                                     level = 4
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

struct ThreePickerPreview : View {
    @State var zero = Taxonomy(besoins).items[0]
    @State var one = Taxonomy(besoins).items[0].one[0]
    @State var two = Taxonomy(besoins).items[0].one[0].two[1]
    @State var three = Nivthree()
    @State var tid = TID()
    @State var level = 0
    
    var edition = true
    
    var body:some View {
        ThreePicker( tid:$tid, zero:$zero, one:$one, two:$two, three:$three, level:$level)
            .frame(width:600,height:300)
        HStack {
            Text(Niveau(tid).nom)
            Text(three.nom)
            Text(tid.show())
        }
    }
}

#Preview {
    ThreePickerPreview().padding()
}
