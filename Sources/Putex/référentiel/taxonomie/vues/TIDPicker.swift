//
//  TIDbarre.swift
//  Putex
//
//  Created by Herve Crespel on 30/09/2025.
//
import SwiftUI

/*
 @State var zero  : Nivzero
 @State var one   : Nivone
 @State var two   : Nivtwo
 @State var three : Nivthree
 @State var four  : Nivfour
 @State var five  : Nivfive
 
 @State var level = 0
 
 public init(_ tid:Binding<TID>, _ taxonomy:Taxonomy = Taxonomy(besoins)) {
     _tid = tid
     self.taxonomy = taxonomy
     zero = Nivzero(taxonomy, tid.wrappedValue)
     one = Nivone(taxonomy, tid.wrappedValue)
     two = Nivtwo(taxonomy, tid.wrappedValue)
     three = Nivthree(taxonomy, tid.wrappedValue)
     four = Nivfour(taxonomy, tid.wrappedValue)
     five = Nivfive(taxonomy, tid.wrappedValue)
 }
 */

public struct TIDPicker: View {
    var taxonomy:Taxonomy
    @Binding var tid:TID
    @State var zero  = Nivzero()
    @State var one   = Nivone()
    @State var two   = Nivtwo()
    @State var three = Nivthree()
    @State var four  = Nivfour()
    @State var five  = Nivfive()
    
    @State var level = 0
    
    public init(_ tid:Binding<TID>, _ taxonomy:Taxonomy = Taxonomy(besoins)) {
        _tid = tid
        self.taxonomy = taxonomy
    }
    
    var barre:some View {
        HStack {
            if zero.nom != "" {
                Button(action:{
                    zero = Nivzero()
                    one = Nivone()
                    two = Nivtwo()
                    three = Nivthree()
                    four = Nivfour()
                    five = Nivfive()
                    level = 0
                })
                {Text(zero.nom)}
                if one.nom != "" {
                    if zero.one.count > 1 {
                        Button(action:{
                            one = Nivone()
                            two = Nivtwo()
                            three = Nivthree()
                            four = Nivfour()
                            five = Nivfive()
                            level = 1
                        })
                        {Text(one.nom)}
                    } else {
                        Text(one.nom)
                    }
                    if two.nom != "" {
                        if one.two.count > 1 {
                            Button(action:{
                                two = Nivtwo()
                                three = Nivthree()
                                four = Nivfour()
                                five = Nivfive()
                                level = 2
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
                                    level = 3
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
                                        level = 4
                                    })
                                    {Text(four.nom)}
                                } else {
                                    Text(four.nom)
                                }
                                if five.nom != "" {
                                    if four.five.count > 1 {
                                        Button(action:{
                                            five = Nivfive()
                                            level = 5
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
            }
            Spacer()
        }
    }
    private var shift = 70
    public var body:some View {
        
        VStack(alignment: .leading) {
            barre
            if level == 0 { ZeroPicker(taxonomy:taxonomy, tid:$tid, zero:$zero, level:$level)
                 //   .onChange(of:zero, {tid = TID([zero.id])})
            }
            if level == 1 { OnePicker( tid:$tid, zero:$zero, one:$one, level:$level)
                    .padding(.leading, CGFloat(level*shift))
                  //  .onChange(of:one, {tid = TID([zero.id, one.id])})
            }
            if level == 2 { TwoPicker( tid:$tid, zero:$zero, one:$one, two:$two, level:$level)
                    .padding(.leading, CGFloat(level*shift))
                  //  .onChange(of:two, {tid = TID([zero.id, one.id, two.id])})
            }
            if level == 3 { ThreePicker( tid:$tid, zero:$zero, one:$one, two:$two, three:$three, level:$level)
                    .padding(.leading, CGFloat(level*shift))
                  //  .onChange(of:three, {tid = TID([zero.id, one.id, two.id, three.id])})
            }
            if level == 4 { FourPicker( tid:$tid, zero:$zero, one:$one, two:$two, three:$three, four:$four, level:$level)
                    .padding(.leading, CGFloat(level*shift))
                  //  .onChange(of:four, {tid = TID([zero.id, one.id, two.id, three.id, four.id])})
            }
            if level == 5 { FivePicker( tid:$tid, zero:$zero, one:$one, two:$two, three:$three, four:$four, five:$five, level:$level)
                    .padding(.leading, CGFloat(level*shift))
                 //   .onChange(of:five, {tid = TID([zero.id, one.id, two.id, three.id, four.id, five.id])})
            }
        }
    }
}

struct TIDbarrePreview : View {
    @State var tid = TID()
    var taxons = Taxonomy(besoins)
    var edition = true
    
    var body:some View {
        VStack {
            TIDPicker($tid, taxons)
                .frame(width:600,height:300)
            HStack {
                Text(tid.id)
                
                Text(Niveau(tid).show())
             //   Text(Niveau(tid).nom)
                Text(String(tid.one ?? -1) ?? "-")
            }
        }
    }
}

#Preview {
    TIDbarrePreview().padding()
}
