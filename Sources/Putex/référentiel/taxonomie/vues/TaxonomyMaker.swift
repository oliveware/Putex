//
//  TaxonomyMaker.swift
//  Putex
//
//  Created by Herve Crespel on 13/07/2025.
//

import SwiftUI
/*      abandonné
 
 
public struct TaxonomyMaker: View {
    var set:Taxonomy
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
        set = taxonomy ?? Taxonomy(taxonomie)
        let niveau = Niveau(tid.wrappedValue)
        nivzero = niveau.nivzero ?? Nivzero()
        nivone = niveau.nivone ?? Nivone()
        nivtwo = niveau.nivtwo ?? Nivtwo()
        nivthree = niveau.nivthree ?? Nivthree()
        nivfour = niveau.nivfour ?? Nivfour()
        nivfive = niveau.nivfive ?? Nivfive()
    }
    
    public var body:some View {
            HStack(alignment: .top) {
                Text("taxonomie : ")
                Picker("", selection: $nivzero) {
                    ForEach(set.items) { item in Text(item.nom).tag(item)
                    }
                }.onChange(of: nivzero, {
                    tid = TID([nivzero.id])
                    nivone = .init()
                    nivtwo = .init()
                    nivthree = .init()
                    nivfour = .init()
                    nivfive = .init()
                    choix = 1
                })
               
                if choix > 0 {
                    Picker("", selection: $nivone) {
                        ForEach(nivzero.one) { item in Text(item.nom).tag(item)
                        }
                    }.onChange(of: nivone, {
                        tid = TID([nivzero.id, nivone.id])
                        nivtwo = .init()
                        nivthree = .init()
                        nivfour = .init()
                        nivfive = .init()
                        choix = 2
                    })
                }
                if choix > 1 {
                    Picker("", selection: $nivtwo) {
                        ForEach(nivone.two) { item in Text(item.nom).tag(item)
                        }
                    }.onChange(of: nivtwo, {
                        tid = TID([nivzero.id, nivone.id, nivtwo.id])
                        print("two" ,tid)
                        nivthree = .init()
                        nivfour = .init()
                        nivfive = .init()
                        choix = 3
                        
                    })
                }
                if choix > 2 && nivtwo.three.count > 0 {
                    Picker("", selection: $nivthree) {
                        ForEach(nivtwo.three) { item in Text(item.nom).tag(item)
                        }
                    }.onChange(of: nivthree, {
                        tid = TID([nivzero.id, nivone.id, nivtwo.id, nivthree.id])
                        nivfour = .init()
                        nivfive = .init()
                        choix = 4
                    })
                }
                if choix > 3 && nivthree.four.count > 0 {
                    Picker("", selection: $nivfour) {
                        ForEach(nivthree.four) { item in Text(item.nom).tag(item)
                        }
                    }.onChange(of: nivfour, {
                        tid = TID([nivzero.id, nivone.id, nivtwo.id, nivthree.id, nivfour.id])
                        nivfive = .init()
                        choix = 5
                    })
                
                    
                }
            
            }.pickerStyle(.inline)
    }
}

struct TMPreview: View {
    @State var tid = TID()
    
    var body:some View {
        VStack {
            TaxonomyMaker($tid).frame(width:500, height:300)
            Text(Niveau(tid).show())
        }
    }
}
#Preview("vierge") {
    TMPreview(tid : TID([1]))
}
#Preview("produit") {
    TMPreview(tid : TID([1]))
}
#Preview("service") {
    TMPreview(tid : TID([2,1,1]))
}
#Preview("cotisation") {
    TMPreview(tid : TID([3,1]))
}

#Preview("impôt") {
    TMPreview(tid : TID([4]))
}
*/
