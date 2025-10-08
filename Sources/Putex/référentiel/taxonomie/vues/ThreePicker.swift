//
//  ThreePicker.swift
//  Putex
//
//  Created by Herve Crespel on 01/10/2025.
//
import SwiftUI

struct ThreePicker: View {
    @Binding var tid: TID
     var zero   : Nivzero
     var one    : Nivone
    @Binding var two    : Nivtwo
    @Binding var three  : Nivthree
    @Binding var four   : Nivfour
    @Binding var five   : Nivfive
    
    init(_ tid:Binding<TID>, _ zero: Nivzero, _ one: Nivone, _ two: Binding<Nivtwo>, _ three:Binding<Nivthree>, _ four:Binding<Nivfour>, _ five:Binding<Nivfive>) {
        _tid = tid
        self.zero = zero
        self.one = one
        _two = two
        _three = three
        _four = four
        _five = five
    }

    var body:some View {
        VStack(alignment:.leading) {
            if three.nom == "" {
                HStack(alignment:.top) {
                    Text("Choisir une sorte de " + two.nom)
                        .padding(.trailing, 20)
                        .padding(.top,CGFloat(two.three.count * 9))
                    ScrollView {
                        VStack(alignment:.leading) {
                            ForEach($two.three) { item in
                                //   if edition {
                                Button(action:{
                                    three = item.wrappedValue
                                    tid = TID([zero.id, one.id, two.id, three.id])
                                    
                                })
                                {Text(item.wrappedValue.nom).frame(width:150, alignment: .center)}
                            }
                        }
                    }
                    Spacer()
                }
                //  .frame(height:CGFloat(zero.one.count * (edition ? 20 : 10)))
                
                
            } else {
                if three.four.count > 0 {
                    FourPicker( $tid, zero, one, two, $three, $four, $five)
                }
            }
        }
    }
}

struct ThreePickerPreview : View {
    @State var zero = Taxonomy(besoins).items[0]
    @State var one = Taxonomy(besoins).items[0].one[0]
    @State var two = Taxonomy(besoins).items[0].one[0].two[0]
    @State var three = Nivthree()
    @State var four = Nivfour()
    @State var five = Nivfive()
    @State var tid = TID()
    
    var body:some View {
        ThreePicker( $tid, zero, one, $two, $three, $four, $five)
            .frame(width:600,height:300)
        HStack {
            Text(zero.nom)
            Text(one.nom)
            Text(two.nom)
            Text(three.nom)
            Text(four.nom)
            Text(five.nom)
            Text(tid.id)
        }
    }
}

#Preview {
    ThreePickerPreview().padding()
}
