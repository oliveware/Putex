//
//  Récurrence.swift
//  Putex
//
//  Created by Herve Crespel on 30/11/2024.
//

public struct Recurrence: Codable {
    enum Période : String, Codable, Enumerable {
        public var id: Self { self }
        static var selector = "récurrence"
        
        var label: String {self.rawValue}
        
        static var all :[Période] = [.m,.t,.a]
        case m = "mensuel"
        case t = "trimestriel"
        case a = "annuel"
    }
    var période: Période?
    var occurences:Int
    var début:  JMA
    var fin:    JMA?
    var jour: Int?
    var mois: Int?
}

import SwiftUI
struct RecurrenceView : View {
    @Binding var recurrence: Recurrence
    var body: some View {
        EnumPicker(Recurrence.Période.all, $recurrence.période).frame(width:160)
    }
}
