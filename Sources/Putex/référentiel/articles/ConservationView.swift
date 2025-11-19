//
//  ConservationView.swift
//  Putex
//
//  Created by Herve Crespel on 13/11/2025.
//

import SwiftUI

struct ConservationView: View {
    @Binding var conserve : Conservation
    @State var edition : Bool
    
    init(_ conserve:Binding<Conservation>) {
        _conserve = conserve
        edition = conserve.wrappedValue.isNaN
    }
    
    var editor: some View {
        VStack {
            HStack {
                EnumPicker(Conservation.Mode.allCases, $conserve.mode, true)
                    .frame(width:120, height:30)
                Spacer()
                Button(action:{edition = false})
                {Image(systemName: "checkmark")}
            }
            TextField("conservateur", text : $conserve.conservateur)
        }.frame(width:200, alignment:.leading)
    }
    
    var body: some View {
        if edition {
            editor
        } else {
            HStack {
                Text("conservation : \(conserve.show)")
                Spacer()
                Button(action:{edition = true})
                {Image(systemName: "pencil")}
            }.frame(width:200, alignment:.leading)
        }
    }
}

struct ConservationPreview : View {
    @State var conservation = Conservation()
    func done() {}
    
    var body : some View {
        ConservationView($conservation)
    }
}
#Preview {
    ConservationPreview().frame(width: 400, height:500)
}

