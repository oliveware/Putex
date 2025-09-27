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
    @State var nivzero  : Nivzero
    @State var nivone   : Nivone
    @State var nivtwo   : Nivtwo
    @State var nivthree : Nivthree
    @State var nivfour  : Nivfour
    @State var nivfive  : Nivfive
    
    //@State var selected : (niv:Int, index:Int) = (niv: 0, index: 0)
    @State private var choix = 0
    
    public init(_ tid:Binding<TID>, _ taxonomy:Taxonomy) {
        _tid = tid
        self.taxonomy = taxonomy
        let niveau = Niveau(tid.wrappedValue, taxonomy)
        nivzero = niveau.zero ?? Nivzero()
        nivone = niveau.one ?? Nivone()
        nivtwo = niveau.two ?? Nivtwo()
        nivthree = niveau.three ?? Nivthree()
        nivfour = niveau.four ?? Nivfour()
        nivfive = niveau.five ?? Nivfive()
    }
    
    func suivant(_ step:Int) {
        switch step {
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
        case 5 :
            choix = 6
        default:
            break
        }
    }
    
    public var body:some View {
            HStack(alignment: .top) {
                if choix > 0 {
                    Text("choix : \(choix)").padding(.trailing,20)
                }
                ZeroChoix(choix:$choix, nivzero: $nivzero, set: taxonomy)
                    .onChange(of:nivzero.id, {
                        suivant(0)
                        tid = TID([nivzero.id])
                    })
                if choix > 0 && nivzero.one.count > 0 {
                OneChoix(choix:$choix, nivzero:$nivzero, nivone:$nivone)
                    .onChange(of:nivone.id, {
                        suivant(1)
                        tid = TID([nivzero.id, nivone.id])
                    })
                if choix > 1 && nivone.two.count > 0 {
                    TwoChoix(choix:$choix, nivone:$nivone, nivtwo: $nivtwo)
                        .onChange(of:nivtwo.id, {
                            suivant(2)
                            tid = TID([nivzero.id, nivone.id, nivtwo.id])
                        })
                    if choix > 2 && nivtwo.three.count > 0 {
                        ThreeChoix(choix:$choix, nivtwo: $nivtwo, nivthree: $nivthree)
                            .onChange(of:nivthree.id, {
                                suivant(3)
                                tid = TID([nivzero.id, nivone.id, nivtwo.id, nivthree.id])
                            })
                        if choix > 3 && nivthree.four.count > 0 {
                            FourChoix(choix:$choix, nivthree: $nivthree, nivfour:$nivfour)
                                .onChange(of:nivfour.id, {
                                    suivant(4)
                                    tid = TID([nivzero.id, nivone.id, nivtwo.id, nivthree.id, nivfour.id])
                                })
                            if choix > 4 && nivfour.five.count > 0 {
                                FiveChoix(choix:$choix, nivfour:$nivfour, nivfive:$nivfive)
                                    .onChange(of:nivfive.id, {
                                        suivant(5)
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
    var taxons : Taxonomy
    
    var body:some View {
        VStack {
            TaxonomyPicker($tid, taxons).frame(width:600, height:300)
            Text(tid.two == nil ? "-" : String(tid.two! ))
            Text(Niveau(tid, taxons).nom)
            Text(tid.id)
            Text(Niveau(tid, taxons).show())
        }.padding()
    }
}
#Preview("besoins") {
    ClassPreview(taxons:Taxonomy(besoins))
}


#Preview("produit-service") {
    ClassPreview(taxons:Taxonomy(produitservice))
}
