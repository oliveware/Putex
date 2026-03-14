//
//  SIRET.swift
//  Putex
//
//  Created by Herve Crespel on 14/03/2026.
//
import SwiftUI

public struct SIRET {
    var siren:String = ""
    var etab:String = ""
    
    public var astring:String {
        siren + etab
    }
    
}

public struct SIRETView : View {
    @Binding var siret:SIRET
    
   /* private var siren: Binding<String> {
        Binding(
            get: {siret.siren},
            set: {new in
                if new.count <= 9 {
                    siret.siren = new
                  //  showWarning = false // Hide warning if under limit
                } else {
                    siret.siren = String(new.prefix(9))
                  //  showWarning = true // Show warning if truncated
                }
            })
    }*/
    
    public init(_ siret:Binding<SIRET>) {
        _siret = siret
    }
    
    public var body: some View {
        HStack {
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
