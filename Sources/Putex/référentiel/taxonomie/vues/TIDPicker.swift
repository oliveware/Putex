//
//  TIDbarre.swift
//  Putex
//
//  Created by Herve Crespel on 30/09/2025.
//
import SwiftUI

/*

 */

public struct TIDPicker: View {
    @Binding var tid:TID
    var taxonomy:Taxonomy
    @State var zero  : Nivzero
    @State var one   : Nivone
    @State var two   : Nivtwo
    @State var three : Nivthree
    @State var four  : Nivfour
    @State var five  : Nivfive
    
    public init(_ tid:Binding<TID>, _ taxonomy:Taxonomy = Taxonomy(besoins)) {
        _tid = tid
        self.taxonomy = taxonomy
        let wid = tid.wrappedValue
        let dim = wid.tab.count
        zero    = dim > 0 ? Nivzero(taxonomy, wid) : Nivzero()
        one     = dim > 1 ? Nivone(taxonomy, wid) : Nivone()
        two     = dim > 2 ? Nivtwo(taxonomy, wid) : Nivtwo()
        three   = dim > 3 ? Nivthree(taxonomy, wid) : Nivthree()
        four    = dim > 4 ? Nivfour(taxonomy, wid) : Nivfour()
        five    = dim > 5 ? Nivfive(taxonomy, wid) : Nivfive()
    }
    
   
    
    private var shift = 70
    public var body:some View {
        
        VStack(alignment: .leading) {
            
            Spacer()
            
           TwoPicker( $tid, $zero, $one)
            
            Spacer()
            
            HStack {
                Spacer()
                Text(tid.id)
            }
        }.frame(alignment: .leading)
        .onChange(of:zero.id) {
            one = Nivone()
            two = Nivtwo()
            three = Nivthree()
            four = Nivfour()
            five = Nivfive()
            tid = TID([zero.id])
        }
    }
}

struct TIDPickerPreview : View {
    @State var tid = TID()
    var taxons = Taxonomy(besoins)
    // var edition = true
    
    var body:some View {
        VStack {
            TIDPicker($tid, taxons)
                .frame(width:600,height:300)
            HStack {
                Text(tid.id)
                Text(taxons.show(tid, false))
                    Text(taxons.show(tid, true))
                
                Text(Niveau(tid).show())
             //   Text(Niveau(tid).nom)
                Text(String(tid.one ?? -1) ?? "-")
            }
        }
    }
}

#Preview {
    TIDPickerPreview().padding()
}
