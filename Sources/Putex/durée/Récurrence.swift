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
   
    var durée: Int
    var ext: Bool = false
    var début:  JMA
    var fin:    JMA { date(durée) }
    var jour: Int?
    
    init (_ période:Période, _ début: JMA, _ durée: Int, _ jour: Int?, _ extensible:Bool = false) {
        self.période = période
        self.début = début
        self.durée = durée
        self.jour = jour
        ext = extensible
    }
    
    public func date(_ index:Int) -> JMA {
        var date = début
        switch période {
        case .a:
            date.année =  début.année + index
        case .t:
            let nbmois = début.mois + 3 * index
            date.mois = nbmois % 12
            let nban = Int(Double(nbmois)/12)
            date.année = début.année + nban
        case .m:
            let nbmois = début.mois + index
            date.mois = nbmois % 12
            let nban = Int(Double(nbmois)/12)
            date.année = début.année + nban
        }
        if let jour = jour { date.jour = jour }
        return date
    }
}

import SwiftUI
struct RécurrenceView : View {
    @Binding var récurrence: Récurrence
    var body: some View {
        EnumPicker(Récurrence.périodes, $récurrence.période).frame(width:160)
    }
}
