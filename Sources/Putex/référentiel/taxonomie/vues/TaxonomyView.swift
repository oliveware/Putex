//
//  TaxonomyView.swift
//  Putex
//
//  Created by Herve Crespel on 12/07/2025.
//

import SwiftUI

struct TaxonomyView : View {
    var taxonomy:Taxonomy
    var body: some View {
        ScrollView {
            ForEach (0..<taxonomy.liste.count,  id:\.self) {
                index in
                HStack {
                    Text("\(index)\t\t\(taxonomy.liste[index])")
                    Spacer()
                }
            }
        }
    }
}

public struct NiveauView : View {
    var taxonomy:Taxonomy
    @Binding var tid:TID
    @State var edition:Bool
    
    public init (_ tid : Binding<TID>, _ taxonomy:Taxonomy? = nil) {
        self.taxonomy = taxonomy ?? Taxonomy(besoins)
        _tid = tid
        edition = (tid.wrappedValue == TID())
    }
    
    public var body: some View {
        if tid == TID() {
            Button("taxonomie", action:{edition = true})
                .sheet(isPresented: $edition)
            { TaxonomyPicker($tid, taxonomy) }
        } else {
            HStack {
                Text(Niveau(tid, taxonomy).show(" | "))
                Spacer()
                Button(action:{edition = true})
                {Image(systemName: "pencil")}
                    .sheet(isPresented: $edition)
                { TaxonomyPicker($tid, taxonomy) }
            }
        }
    }
}


struct NiveauPreview: View {
    var taxonomy = Taxonomy(besoins)
    @State var tid : TID
    
    var body:some View {
        NiveauView($tid, taxonomy).frame(width:300, height:200).padding()
    }
}

#Preview("liste") {
    TaxonomyView(taxonomy: Taxonomy(besoins)).frame(width:700)
}
#Preview("vierge") {
    NiveauPreview(tid : TID())
}
#Preview("lait") {
    NiveauPreview(tid : TID([1,1,1,1]))
}
#Preview("caution meublé") {
    NiveauPreview(tid : TID([2,1,1,2]))
}
