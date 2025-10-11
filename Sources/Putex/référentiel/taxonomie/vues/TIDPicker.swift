//
//  TIDbarre.swift
//  Putex
//
//  Created by Herve Crespel on 30/09/2025.
//
import SwiftUI


public struct TIDPicker: View {
    @Binding var tid:TID
    var taxonomy:Taxonomy
    @State var zero  : Nivzero
    @State var one   : Nivone
    
    public init(_ tid:Binding<TID>, _ taxonomy:Taxonomy = Taxonomy(besoins)) {
        _tid = tid
        self.taxonomy = taxonomy
        zero    =  Nivzero()
        one     =  Nivone()
    }
    
   
    
    private var shift = 70
    public var body:some View {
        
        VStack(alignment: .leading) {
            Spacer()
            TwoPicker( tid:$tid, zero:$zero, one:$one)
            Spacer()
            HStack {
                Spacer()
                Text(tid.id)
            }
        }.frame(alignment: .leading)
        .onChange(of:zero.id) {
            one = Nivone()

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
