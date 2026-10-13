//
//  Facturelec.swift
//  Attribex
//
//  Created by Herve Crespel on 27/03/2026.
//

struct Facturelec : Codable {
    
}

import SwiftUI

struct FacturelecView: View {
    
    @Binding var facture:Facturelec
    var previous : Facturelec
    @State var edition : Bool
    
    @State var creuses:[Int] = [0,0,0,0]
    @State var pleines:[Int] = [0,0,0,0]
    @State var abonnement = 0
    @State var taxes : [Int] = [0,0,0,0,0]
    
    var body: some View {
        if edition {
          //  ElecEditor(facture: $facture, previous:previous)
        } else {
            
        }
    }
}


