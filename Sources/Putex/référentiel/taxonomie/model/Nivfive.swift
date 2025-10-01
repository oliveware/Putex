//
//  Nivfive.swift
//  Taxonomie
//
//  Created by Herve Crespel on 06/07/2025.
//

struct Nivfive: Codable, Identifiable,Hashable {
    static public func ==  (_ a:Nivfive, _ b:Nivfive) -> Bool {
        a.id == b.id
    }
    public func hash (into hasher: inout Hasher) {
        hasher.combine(nom + String(id))
    }
    
    public var id:Int
    var tid:TID?
    
    var nom:String = ""
    
    init() {id = -1}
    
    init(_ taxonomy:Taxonomy, _ tid:TID) {
        let tab = tid.tab
        self = taxonomy.items[tab[0]].one[tab[1]].two[tab[2]].three[tab[3]].four[tab[4]].five[tab[5]]
    }
    
}
