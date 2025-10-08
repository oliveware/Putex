//
//  TwoPicker.swift
//  Putex
//
//  Created by Herve Crespel on 01/10/2025.
//

import SwiftUI

struct TwoPicker: View {
    @Binding var tid: TID
    @Binding var zero   : Nivzero
    @Binding var one    : Nivone
    @State var two    = Nivtwo()
    @State var three  = Nivthree()
    @State var four   = Nivfour()
    @State var five   = Nivfive()
    
    
    init(_ tid:Binding<TID>, _ zero: Binding<Nivzero>, _ one: Binding<Nivone>) {
        _tid = tid
        _zero = zero
        _one = one
    }
    
    var barre:some View {
        HStack {
            if one.nom != "" {
                Button(action:{
                    one = Nivone()
                    two = Nivtwo()
                    three = Nivthree()
                    four = Nivfour()
                    five = Nivfive()
                })
                {Text(zero.nom + " " + one.nom)}
                if two.nom != "" {
                    if one.two.count > 1 {
                        Button(action:{
                            two = Nivtwo()
                            three = Nivthree()
                            four = Nivfour()
                            five = Nivfive()
                        })
                        {Text(two.nom)}
                    } else {
                        Text(two.nom)
                    }
                    if three.nom != "" {
                        if two.three.count > 1 {
                            Button(action:{
                                three = Nivthree()
                                four = Nivfour()
                                five = Nivfive()
                            })
                            {Text(three.nom)}
                        } else {
                            Text(three.nom)
                        }
                        if four.nom != "" {
                            if three.four.count > 1 {
                                Button(action:{
                                    four = Nivfour()
                                    five = Nivfive()
                                })
                                {Text(four.nom)}
                            } else {
                                Text(four.nom)
                            }
                            if five.nom != "" {
                                if four.five.count > 1 {
                                    Button(action:{
                                        five = Nivfive()
                                    })
                                    {Text(five.nom)}
                                } else {
                                    Text(five.nom)
                                }
                            }
                        }
                    }
                }
            }
            Spacer()
            Text(tid.id)
        }
    }
    

    var body:some View {
        
        if one.nom == "" {
            ZeroPicker($tid, $zero, $one )
        } else {
            VStack {
                barre
                Spacer()
                if two.nom == "" {
                    HStack(alignment:.top) {
                        Text("Choisir une catégorie")
                            .padding(.trailing, 20)
                            .padding(.top,CGFloat(one.two.count * 9))
                        ScrollView {
                            VStack(alignment:.leading) {
                                ForEach($one.two) { item in
                                    //   if edition {
                                    Button(action:{
                                        two = item.wrappedValue
                                        tid = TID([zero.id, one.id, two.id])
                                    })
                                    {Text(item.wrappedValue.nom).frame(width:150, alignment: .center)}
                                    // }
                                }
                            }
                        }
                        
                        
                        
                        Spacer()
                    }
                } else {
                    if two.three.count > 0 {
                        ThreePicker( $tid, zero, one, $two, $three, $four, $five)
                    }
                }
            }
        }
    }
}

struct TwoPickerPreview : View {

    @State var zero = Taxonomy(besoins).items[0]
    @State var two = Nivtwo()
    @State var one  = Taxonomy(besoins).items[0].one[0]
    @State var tid = TID()
    
    var edition = true
    
    var body:some View {
        TwoPicker( $tid, $zero, $one)
            .frame(width:600,height:300)
        VStack {
            HStack {
                Text(zero.nom)
                Text(one.nom)
                Text(two.nom)
            }
            Text(tid.id)
        }
    }
}

#Preview {
    TwoPickerPreview().padding()
}
