//
//  FactureView.swift
//  Locations
//
//  Created by Herve Crespel on 01/02/2023.
//

import SwiftUI
/*
 struct FactureView: View {
 
 @Binding var facture:Facture
 var previous : Facture
 
 @State var date: Date = Date.now
 
 /* @State var detail: Detail = Detail()
  
  
  
  */
 @State var TTC : Int = 0
 
 @State var check = false
 
 init(_ fac: Binding<Facture>, _ prev:Facture){
 self._facture = fac
 previous = prev
 }
 
 var body: some View {
 VStack {
 DatePicker("Facture \(facture.kind.rawValue) du ", selection: $date, displayedComponents: [.date])
 .frame(width:250)
 switch facture.kind {
 case .eau:
 EauEditor(courant:$facture.eau,
 previous:previous.eau)
 
 case .gen:
 DetailEditor(detail: $facture.detail)
 }
 
 Button("valider")
 {
 switch facture.kind {
 case .eau:
 facture =
 Facture( JMA(date), TTC,
 facture.eau )
 case .elec:
 facture =
 Facture( JMA(date), TTC,
 facture.elec )
 case .gen:
 facture =
 Facture( JMA(date), TTC, facture.detail)
 }
 }.padding(.top, 20)
 .disabled(!(date > previous.date.asDate && date <= Date.now
 && TTC > 0))
 }.padding(10)
 }
 
 var datecheck:Bool {
 date > previous.date.asDate && date <= Date.now
 }
 var ttcheck:Bool {
 TTC > 0
 }
 }
 
 struct FactureView_Previews: PreviewProvider {
 static var previews: some View {
 FactureView(
 .constant(facturelec), facturelec
 )
 }
 }
 */
