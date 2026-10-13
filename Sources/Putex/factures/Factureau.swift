//
//  Factureau.swift
//  Attribex
//
//  Created by Herve Crespel on 27/03/2026.
//

struct Factureau: Codable {
    
}

import SwiftUI

struct FactureauView: View {
    
    @Binding var facture:Factureau
    var previous : Factureau
    
    @State var eau:[Int] = [0,0,0,0]
    @State var taxeau = 0
    
    var body: some View {
        
    }
}

