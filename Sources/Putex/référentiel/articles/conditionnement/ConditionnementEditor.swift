//
//  ConditionnementEditor.swift
//  Putex
//
//  Created by Herve Crespel on 26/11/2025.
//
import SwiftUI
import Taxionomy

struct ConditionnementView: View {
    @Binding var conditionnement: Conditionnement
    var fermetures: Taxionomy
    var contenants: Taxionomy
    @State private var contenantpick : Bool
    @State private var fermeturepick : Bool
    var done: () -> Void
    
    public init(_ conditionnement:Binding<Conditionnement>, _ contenants:Taxionomy, _ fermetures: Taxionomy, _ done: @escaping () -> Void) {
        self.fermetures = fermetures
        self.contenants = contenants
        _conditionnement = conditionnement
        self.done = done
        contenantpick = conditionnement.wrappedValue.contenant.nom == ""
        fermeturepick = conditionnement.wrappedValue.fermeture.nom == ""
    }
    
    var body: some View {
        VStack {
            GroupBox("conditionnement") {
                // conservation
                ConservationView($conditionnement.conservation)
                .frame(width:350, alignment:.leading)
                
                // contenant
                if contenantpick {
                    TidnomPicker($conditionnement.contenant, contenants, {contenantpick = false })
                } else {
                    HStack {
                        Text(conditionnement.contenant.nom)
                        Spacer()
                        Button(action:{contenantpick = true})
                        {Image(systemName: "pencil")}
                    }.frame(width:350, alignment:.leading)
                }
            
                // fermeture
                if fermeturepick {
                    TidnomPicker($conditionnement.fermeture, fermetures, {fermeturepick = false})
                } else {
                    HStack {
                        Text(conditionnement.fermeture.nom)
                        Spacer()
                        Button(action:{fermeturepick = true})
                        {Image(systemName: "pencil")}
                    }.frame(width:350, alignment:.leading)
                }
                
            }
        }
    }
}
