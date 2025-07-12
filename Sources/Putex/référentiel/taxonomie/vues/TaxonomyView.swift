//
//  TaxonomyView.swift
//  Putex
//
//  Created by Herve Crespel on 12/07/2025.
//

import SwiftUI

public struct NiveauView : View {
    var taxonomy:Taxonomy
    @Binding var tid:TID
    @State var edition:Bool
    
    public init (_ tid : Binding<TID>, _ taxonomy:Taxonomy) {
        self.taxonomy = taxonomy
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
                Text(Niveau(tid).show)
                Spacer()
                Button(action:{edition = true})
                {Image(systemName: "pencil")}
            }
        }
    }
}


struct NiveauPreview: View {
    var taxonomy = Taxonomy(taxonomie)
    @State var tid = TID()
    
    var body:some View {
        NiveauView($tid, taxonomy).frame(width:300, height:200).padding()
    }
}
#Preview("vierge") {
    NiveauPreview(tid : TID())
}
#Preview("four") {
    NiveauPreview(tid : TID([1,1,1,1]))
}
#Preview("meublé") {
    NiveauPreview(tid : TID([2,1,1,2]))
}
