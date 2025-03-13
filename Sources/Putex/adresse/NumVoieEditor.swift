//
//  NumVoieEditor.swift
//  Putex
//
//  Created by Herve Crespel on 13/03/2025.
//

import SwiftUI


public struct NumVoieEditor: View {
    @Binding var numvoie:NumVoie
    @State var edition :Bool
    
    public init(_ numvoie:Binding<NumVoie>) {
        _numvoie = numvoie
        edition = numvoie.wrappedValue.isNaN
    }
   
    public var body :some View {
        Form {
            TextField("voie      ", text:$numvoie.voie)
            HStack {
                TextField("numéro", text:$numvoie.num)
                    .frame(width:100)
                TextField("code postal", text:$numvoie.codepostal)
            }
        }.frame(alignment: .leading)
    }
    
}
