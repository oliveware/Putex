//
//  Untitled.swift
//  Putex
//
//  Created by Herve Crespel on 01/10/2025.
//

import SwiftUI

struct FourPicker: View {
    @Binding var tid: TID
     var zero   : Nivzero
     var one    : Nivone
     var two    : Nivtwo
    @Binding var three  : Nivthree
    @Binding var four   : Nivfour
    @Binding var five   : Nivfive
    
    init(_ tid:Binding<TID>, _ zero: Nivzero, _ one: Nivone, _ two: Nivtwo, _ three:Binding<Nivthree>, _ four:Binding<Nivfour>, _ five:Binding<Nivfive>) {
        _tid = tid
        self.zero = zero
        self.one = one
        self.two = two
        _three = three
        _four = four
        _five = five
    }

    var body:some View {
        VStack(alignment:.leading) {
            if four.nom == ""{
                HStack(alignment:.top) {
                    Text("Choisir une sorte de " + three.nom)
                        .padding(.trailing, 20)
                        .padding(.top,CGFloat(three.four.count * 12))
                    ScrollView {
                        VStack(alignment:.leading) {
                            ForEach($three.four) { item in
                                //   if edition {
                                Button(action:{
                                    four = item.wrappedValue
                                    tid = TID([zero.id, one.id, two.id, three.id, four.id])
                                })
                                {Text(item.wrappedValue.nom).frame(width:150, alignment: .center)}
                                // }
                            }
                        }
                    }
                    //  .frame(height:CGFloat(zero.one.count * (edition ? 20 : 10)))
                    Spacer()
                }.padding(.leading, 100)
            } else {
                if four.five.count > 0 {
                    FivePicker( $tid, zero, one, two, three, $four, $five)
                }
            }
            
        }
    }
}

struct FourPickerPreview : View {
    @State var zero = Taxonomy(besoins).items[0]
    @State var one = Taxonomy(besoins).items[0].one[0]
    @State var two = Taxonomy(besoins).items[0].one[0].two[1]
    @State var three =  Taxonomy(besoins).items[0].one[0].two[1].three[0]
    @State var four = Nivfour()
    @State var five = Nivfive()
    @State var tid = TID()
    @State var level = 0
    
    var edition = true
    
    var body:some View {
        FourPicker( $tid, zero, one, two, $three, $four, $five)
            .frame(width:600,height:300)
        HStack {
            //Text(Niveau(tid).nom)
            Text(four.nom)
            Text(tid.id)
        }
    }
}

#Preview {
    FourPickerPreview().padding()
}
