//
//  Récurrence.swift
//  Putex
//
//  Created by Herve Crespel on 30/11/2024.
//

public struct Récurrence: Codable {
    static var périodes :[Période] = [.m,.t,.a]
    enum Période : String, Codable, Enumerable {
        public var id: Self { self }
        static var selector = "récurrence"
        
        var label: String {self.rawValue}
        
        case m = "mensuel"
        case t = "trimestriel"
        case a = "annuel"
    }
    var période: Période
   
    var occurences: Int?
    var début:  JMA
    var fin:    JMA?
    var jour: Int?
    
    init (_ période:Période, _ début: JMA, _ fin: JMA?) {
        self.période = période
        self.début = début
        self.fin = fin
        var nbmois:Int
        if fin != nil {
            if début.année == fin!.année {
                nbmois = fin!.mois - début.mois
            } else {
                let begin = 12 - début.mois
                let end = fin!.mois
                nbmois = 12 * (fin!.année - début.année - 1) + begin + end
            }
            switch période {
            case .m:
               occurences = nbmois
            case .t:
                occurences = Int(nbmois / 3)
            case .a:
                occurences = Int(nbmois / 12)
            }
        }
    }
    
    init (_ période:Période, _ début: JMA, _ occurences: Int?, _ jour: Int?) {
        self.période = période
        self.début = début
        self.occurences = occurences
        self.jour = jour
    }
}

public struct Echéance: Codable {
    var date: JMA
    var montant: Montant
    var payée = false
}

import SwiftUI
struct RécurrenceView : View {
    @Binding var récurrence: Récurrence
    var body: some View {
        EnumPicker(Récurrence.périodes, $récurrence.période).frame(width:160)
    }
}
