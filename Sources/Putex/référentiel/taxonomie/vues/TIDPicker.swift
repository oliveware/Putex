//
//  TIDPicker.swift
//  Putex
//
//  Created by Herve Crespel on 17/07/2025.
//

//
//  Classifier.swift
//  Taxonomie
//
//  Created by Herve Crespel on 07/07/2025.
//

import SwiftUI

public struct TIDPicker: View {
    var taxonomy:Taxonomy
    @Binding var tid:TID
    @State var nivzero  : Nivzero
    @State var nivone   : Nivone
    @State var nivtwo   : Nivtwo
    @State var nivthree : Nivthree
    @State var nivfour  : Nivfour
    @State var nivfive  : Nivfive
    
    //@State var selected : (niv:Int, index:Int) = (niv: 0, index: 0)
    @State private var choix = 0
    
    public init(_ tid:Binding<TID>, _ taxonomy:Taxonomy? = nil) {
        _tid = tid
        self.taxonomy = taxonomy ?? Taxonomy(taxonomie)
        let niveau = Niveau(tid.wrappedValue)
        nivzero = niveau.zero ?? Nivzero()
        nivone = niveau.one ?? Nivone()
        nivtwo = niveau.two ?? Nivtwo()
        nivthree = niveau.three ?? Nivthree()
        nivfour = niveau.four ?? Nivfour()
        nivfive = niveau.five ?? Nivfive()
    }
    
    func reset(_ level:Int) {
        if level > 4 { nivfive = .init() }
        if level > 3 { nivfour = .init() }
        if level > 2 { nivthree = .init() }
        if level > 1 { nivtwo = .init() }
        if level > 0 { nivone = .init() }
        }
    
    public var body:some View {
            HStack(alignment: .top) {
                Text("taxonomie : ")
                ZeroChoix(choix:$choix, nivzero: $nivzero, set: taxonomy)
                    .onChange(of:nivzero.id, {
                        tid = TID([nivzero.id])
                        choix = 1
                        reset(1)
                    })
                if choix > 0 {
                OneChoix(choix:$choix, nivzero:$nivzero, nivone:$nivone)
                    .onChange(of:nivone.id, {
                        tid = TID([nivzero.id, nivone.id])
                        choix = nivone.two.isEmpty ? 7 : 2
                        reset(2)
                    })
                if choix > 1 {
                    TwoChoix(choix:$choix, nivone:$nivone, nivtwo: $nivtwo)
                        .onChange(of:nivtwo.id, {
                            tid = TID([nivzero.id, nivone.id, nivtwo.id])
                            choix = nivtwo.three.isEmpty ? 7 : 3
                            reset(3)
                        })
                    if choix > 2  {
                        ThreeChoix(choix:$choix, nivtwo: $nivtwo, nivthree: $nivthree)
                            .onChange(of:nivthree.id, {
                                tid = TID([nivzero.id, nivone.id, nivtwo.id, nivthree.id])
                                choix = nivthree.four.isEmpty ? 7 : 4
                                reset(4)
                            })
                        if choix > 3 {
                            FourChoix(choix:$choix, nivthree: $nivthree, nivfour:$nivfour)
                                .onChange(of:nivfour.id, {
                                    tid = TID([nivzero.id, nivone.id, nivtwo.id, nivthree.id, nivfour.id])
                                    choix = nivfour.five.isEmpty ? 7 : 5
                                    reset(5)
                                })
                            if choix > 4  {
                                FiveChoix(choix:$choix, nivfour:$nivfour, nivfive:$nivfive)
                                    .onChange(of:nivfive.id, {
                                        tid = TID([nivzero.id, nivone.id, nivtwo.id, nivthree.id, nivfour.id, nivfive.id])
                                        choix = 7
                                    })
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ClassePreview: View {
    @State var tid = TID()
    
    var body:some View {
        TIDPicker($tid).frame(width:500, height:300).padding()
    }
}
#Preview("vierge") {
    ClassePreview(tid : TID([1]))
}
#Preview("produit") {
    ClassePreview(tid : TID([1]))
}
#Preview("service") {
    ClassePreview(tid : TID([2,1,1]))
}
#Preview("cotisation") {
    ClassePreview(tid : TID([3,1]))
}

#Preview("impôt") {
    ClassePreview(tid : TID([4]))
}
