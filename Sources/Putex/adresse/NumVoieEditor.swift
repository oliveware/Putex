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
            TextField("numéro", text:$numvoie.num)
                .frame(width:100)
            TextField("voie", text:$numvoie.voie)
                .frame(width:200)
            TextField("code postal", text:$numvoie.codepostal)
                .frame(width:130)
        }.frame(alignment: .leading)
    }
}

public struct NumVoiePreditor: View {
    @State var numvoie = NumVoie()
    
    public var body :some View {
        NumVoieEditor($numvoie)
    }
}

#Preview {
    NumVoiePreditor()
}
