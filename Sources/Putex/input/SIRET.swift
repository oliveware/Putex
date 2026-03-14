//
//  SIRET.swift
//  Putex
//
//  Created by Herve Crespel on 14/03/2026.
//
import SwiftUI

public struct SIRET: Codable {
    var siren:String = ""
    var etab:String = ""
    
    public init() {}
    
    public var astring:String {
        siren + etab
    }
    
}

public struct SIRETView : View {
    @Binding var siret:SIRET
    
    public init(_ siret:Binding<SIRET>) {
        _siret = siret
    }
    
    public var body: some View {
        HStack {
            Text("SIRET")
            FixedField("SIREN", $siret.siren, 9, true, true)
                .frame(width:100)
            FixedField("établissement", $siret.etab, 5, true, true)
                .frame(width:80)
        }
    }
}

struct SIRETPreview : View {
    @State var siret = SIRET()
    
    var body: some View {
        SIRETView($siret).padding()
    }
}

#Preview {
    SIRETPreview()
}
