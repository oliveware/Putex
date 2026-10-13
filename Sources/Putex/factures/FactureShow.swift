//
//  FactureShow.swift
//  Locations
//
//  Created by Herve Crespel on 05/02/2023.
//

import SwiftUI


/*struct FactureShow: View {
    var facture:Facture
    var tetepied = true
    
    var body: some View {
        VStack {
            if tetepied {
                Text(facture.tete)
                    .font(.title2)
                    .frame(width:350,height: 40)
            }
            switch facture.kind {
            case .eau:
                DetailShow(lignes:facture.lignes,
                           titre:tetepied)
                    .frame(height:210)
            case .elec:
                DetailShow(lignes:facture.lignes,
                           titre:tetepied)
                    .frame(height:320)
            case .loyer:
                DetailShow(lignes:facture.lignes,
                           titre:tetepied)
            case .none:
                DetailShow(lignes:facture.lignes,
                           titre:tetepied)
            }
            if tetepied {
                Text(facture.pied)
                    .frame(width:250,height: 40)
            }
        }
        
    }
}

struct DetailShow: View {
    var lignes: [LigneCF]
    var large : [CGFloat] = [100, 300, 80, 80, 80]
    var titre = false
    
    var body: some View {
        VStack {
            if titre {
                FormattedRow(
                    cols: [ "total", "description","quantité","HT", "taxe" ],
                    large: large
                ).padding(.bottom,3)
            } else {
                Text("")
            }
            
            ForEach (0..<lignes.count, id:\.self) {
                line in
                FormattedRow(
                    cols: lignes[line].facture,
                    large: large
                )
            }
            
        }
    }
}*/
    
/*
struct FactureShow_Previews: PreviewProvider {
    static var previews: some View {
        FactureShow(facture:facturelec)
        FactureShow(facture:factureau)
    }
}
*/
