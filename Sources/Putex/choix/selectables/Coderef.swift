//
//  Coderef.swift
//  Putex
//
//  Created by Herve Crespel on 01/10/2024.
//


struct Coditem: Codable, Identifiable, Pickable {
    static var selector = "item"
    
    var id:String {code}
    var code : String
    var label : String
    
    init(_ code:String, _ desc:String) {
        self.code = code
        label = desc
    }
    init<T:Pickable>(_ item:T) {
        code = item.id
        label = item.label
    }
}

// le nom Coderef évite la confusion avec Foundation.Table
//
public struct Coderef: Codable, Identifiable {
    public var label: String {name}
    
    public static var allprompt = "tables"
    
    static var all: [String:Coderef] = [:]
    
    static var nextcode = 0
    public static func newcode(_ tablename:String) -> String {
        nextcode += 1
        return "T-" + tablename + String(nextcode)
    }
    public var id : String { name }
    var name : String = ""
    var items : [Coditem] = []
    var selector: String = ""
    
    public init(_ tablename:Mot) {
        name = tablename.pluriel
        selector = tablename.singulier
        Coderef.all[name] = self
    }
    init(_ tablename:Mot, _ items:[Coditem]) {
        name = tablename.pluriel
        selector = tablename.singulier
        self.items = items
        Coderef.all[name] = self
    }
    init<T:Pickable>(_ tablename:Mot, _ items:[T]) {
        name = tablename.pluriel
        selector = tablename.singulier
        var tablitems: [Coditem] = []
        for item in items {
            tablitems.append(Coditem(item))
        }
        self.items = tablitems
        Coderef.all[name] = self
    }
    
    mutating func insert(_ item:Coditem) {
        items.append(item)
    }
    
    subscript(_ code:String) -> String {
        var found = "nil"
        for item in items {
            if item.code == code {
                found = item.label
            }
        }
        return found
    }
}


let banques = Coderef(Mot("banque", "banques"),
[
    Coditem("SG", "Société Générale"),
    Coditem("CM", "Crédit Mutuel"),
    Coditem("BP", "Banque Postale")
])
