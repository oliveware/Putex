//
//  OnePicker.swift
//  Putex
//
//  Created by Herve Crespel on 30/09/2025.
//

import SwiftUI

struct OnePicker: View {
    @Binding var tid: TID
    @Binding var zero   : Nivzero
    @Binding var one    : Nivone
    
    init(_ tid:Binding<TID>, _ zero: Binding<Nivzero>, _ one: Binding<Nivone>) {
        _tid = tid
        _zero = zero
        _one = one
    }

    var body:some View {
        VStack(alignment:.leading) {
            if one.nom == "" {
                HStack(alignment:.top) {
                    ScrollView {
                        VStack(alignment:.leading) {
                            ForEach($zero.one) { item in
                                //   if edition {
                                Button(action:{
                                    one = item.wrappedValue
                                    tid = TID([zero.id, one.id])
                                })
                                {Text(item.wrappedValue.nom).frame(width:150, alignment: .center)}
                                // }
                            }
                        }
                    }.padding(.leading, 100)
                    //  .frame(height:CGFloat(zero.one.count * (edition ? 20 : 10)))
                    VStack{
                        Text("Choisir un type de " + zero.nom)
                            .padding(.leading, 20)
                            .padding(.top,CGFloat(zero.one.count * 9))
                        /*   if ajout {
                         Button("ajouter une commune", action:{
                         ajout = true
                         region.communes = [Commune()] + $region.wrappedValue.communes
                         commune = region.communes[0]
                         })
                         }*/
                    }
                    Spacer()
                }
            } else {
                //TwoPicker( tid:$tid, zero:$zero, one:$one)
            }
        }
        
    }
}



    


