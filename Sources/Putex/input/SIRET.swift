//
//  SIRET.swift
//  Putex
//
//  Created by Herve Crespel on 14/03/2026.
//
import SwiftUI

struct SIRET {
    var siren:String = ""
    var etab:String = ""
}

struct SIRETView : View {
    @Binding var siret:SIRET
    
    var body: some View {
        HStack {
            TextField("code SIREN", text: $siret.siren)
                .frame(width:120)
            TextField("code établissement", text: $siret.etab)
                .frame(width:120)
        }
    }
}

struct SIRETPreview : View {
    @State var siret = SIRET()
    
    var body: some View {
        SIRETView(siret:$siret).padding()
    }
}

#Preview {
    SIRETPreview()
}
