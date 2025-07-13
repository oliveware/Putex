//
//  Classifier.swift
//  Taxonomie
//
//  Created by Herve Crespel on 07/07/2025.
//

import SwiftUI

public struct TaxonomyPicker: View {
    var taxonomy:Taxonomy
    @Binding var tid:TID
    @State var nivzero  = Nivzero()
    @State var nivone   = Nivone()
    @State var nivtwo   = Nivtwo()
    @State var nivthree = Nivthree()
    @State var nivfour  = Nivfour()
    @State var nivfive  = Nivfive()
    
    //@State var selected : (niv:Int, index:Int) = (niv: 0, index: 0)
    @State private var choix = 0
    
    public init(_ tid:Binding<TID>, _ taxonomy:Taxonomy? = nil) {
        _tid = tid
        self.taxonomy = taxonomy ?? Taxonomy(taxonomie)
        let niveau = Niveau(tid.wrappedValue)
        nivzero = niveau.nivzero ?? Nivzero()
        nivone = niveau.nivone ?? Nivone()
        nivtwo = niveau.nivtwo ?? Nivtwo()
        nivthree = niveau.nivthree ?? Nivthree()
        nivfour = niveau.nivfour ?? Nivfour()
        nivfive = niveau.nivfive ?? Nivfive()
    }
    
    func suivant() {
        switch choix {
        case 0 :
            nivone = .init()
            nivtwo = .init()
            nivthree = .init()
            nivfour = .init()
            nivfive = .init()
            choix = 1
        case 1 :
            nivtwo = .init()
            nivthree = .init()
            nivfour = .init()
            nivfive = .init()
            choix = 2
        case 2 :
            nivthree = .init()
            nivfour = .init()
            nivfive = .init()
            choix = 3
        case 3 :
            nivfour = .init()
            nivfive = .init()
            choix = 4
        case 4 :
            nivfive = .init()
            choix = 5
        default:
            choix = 0
        }
    }
    
    public var body:some View {
            HStack(alignment: .top) {
                Text("taxonomie : ")
                ZeroChoix(choix:$choix, nivzero: $nivzero, set: taxonomy)
                    .onChange(of:nivzero.id, {
                        suivant()
                        tid = TID([nivzero.id])
                    })
                if choix > 0 {
                OneChoix(choix:$choix, nivzero:$nivzero, nivone:$nivone)
                    .onChange(of:nivone.id, {
                        suivant()
                        tid = TID([nivzero.id, nivone.id])
                    })
                if choix > 1 {
                    TwoChoix(choix:$choix, nivone:$nivone, nivtwo: $nivtwo)
                        .onChange(of:nivtwo.id, {
                            suivant()
                            tid = TID([nivzero.id, nivone.id, nivtwo.id])
                        })
                    if choix > 2 && nivtwo.three.count > 0 {
                        ThreeChoix(choix:$choix, nivtwo: $nivtwo, nivthree: $nivthree)
                            .onChange(of:nivthree.id, {
                                suivant()
                                tid = TID([nivzero.id, nivone.id, nivtwo.id, nivthree.id])
                            })
                        if choix > 3 && nivthree.four.count > 0 {
                            FourChoix(choix:$choix, nivthree: $nivthree, nivfour:$nivfour)
                                .onChange(of:nivfour.id, {
                                    suivant()
                                    tid = TID([nivzero.id, nivone.id, nivtwo.id, nivthree.id, nivfour.id])
                                })
                            if choix > 4 && nivfour.five.count > 0 {
                                FiveChoix(choix:$choix, nivfour:$nivfour, nivfive:$nivfive)
                                    .onChange(of:nivfive.id, {
                                        choix = 7
                                        tid = TID([nivzero.id, nivone.id, nivtwo.id, nivthree.id, nivfour.id, nivfive.id])
                                    })
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ClassPreview: View {
    @State var tid = TID()
    
    var body:some View {
        TaxonomyPicker($tid).frame(width:500, height:300)
    }
}
#Preview("vierge") {
    ClassPreview(tid : TID([1]))
}
#Preview("produit") {
    ClassPreview(tid : TID([1]))
}
#Preview("service") {
    ClassPreview(tid : TID([2,1,1]))
}
#Preview("cotisation") {
    ClassPreview(tid : TID([3,1]))
}

#Preview("impôt") {
    ClassPreview(tid : TID([4]))
}
