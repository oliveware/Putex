//
//  Coderef.swift
//  Putex
//
//  Created by Herve Crespel on 01/10/2024.
//

// le nom Coderef évite la confusion avec Foundation.Table
//
public struct Coderef: Codable, Identifiable {
    public var label: String {name.pluriel}
    
    public static var allprompt = "tables"
    
    public static var all: [String:Coderef] = [:]
    public static func find(_ name:String) -> Coderef {
        all[name] ?? empty
    }
    static var empty: Coderef {
        Coderef(Mot("vide",nil))
    }
    
    public enum Domain :String, Codable {
        case article    = "A"
        case batiment   = "B"
        case company    = "C"
        case equipement = "E"
        case foncier    = "F"
        case human      = "H"
        case local      = "L"
        case offre      = "O"
        case cataloffre = "OC"
        case payment    = "P"
        case piece      = "Q"
      case location   = "R"     // Rent
        case tarif      = "T"
        case compte     = "W"
        case taxation   = "X"
        case appareil   = "Z"
    }
    
    static var nextcode = 0
    public static func newcode(_ domain:Domain) -> String {
        nextcode += 1
        return domain.rawValue + "#" + String(nextcode)
    }
    public var id : String { name.pluriel }
    var name : Mot
    var items : [Head] = []
    var selector: String = ""
    
    public init(_ tablename:Mot) {
        name = tablename
        selector = tablename.singulier
        Coderef.all[name.pluriel] = self
    }
    init(_ tablename:Mot, _ items:[Head]) {
        name = tablename
        selector = tablename.singulier
        self.items = items
        Coderef.all[name.pluriel] = self
    }
    public init<T:Oxet>(_ tablename:Mot, _ items:[T]) {
        name = tablename
        selector = tablename.singulier
        var heads: [Head] = []
        for item in items {
            heads.append(Head(item))
        }
        self.items = heads
        Coderef.all[name.pluriel] = self
    }
    
    public mutating func insert(_ code:String, _ label:String){
        insert(Head(code, label))
    }
    
    mutating func insert(_ head:Head) {
        var updated :[Head] = []
        var found = false
        for item in items {
            if item.code == head.code {
                updated.append(head)
                found = true
            } else {
                updated.append(item)
            }
        }
        if !found { updated.append(head)}
        items = updated
    }
    
    mutating func insert<T:Oxet>(_ item:T) {
        insert(Head(item))
    }
    
    subscript(_ code:String) -> String {
        var found = "NaN"
        for item in items {
            if item.code == code {
                found = item.label
            }
        }
        return found
    }
}



