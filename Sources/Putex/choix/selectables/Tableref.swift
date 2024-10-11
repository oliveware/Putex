//
//  Coderef.swift
//  Putex
//
//  Created by Herve Crespel on 01/10/2024.
//


struct Tablitem: Codable, Identifiable, Pickable {
    static var prompt = "item"
   
    var id : String
    var label : String
    
    init(_ id:String, _ desc:String) {
        self.id = id
        label = desc
    }
    init<T:Pickable>(_ item:T) {
        id = item.id
        label = item.label
    }
}

// le nom Coderef évite la confusion avec Foundation.Table
//
public struct Coderef: Codable, Identifiable{
    public var label: String {name}
    
    public static var allprompt = "tables"
    
    static var all: [String:Coderef] = [:]
    
    static var nextid = 0
    public static func newid(_ tablename:String) -> String {
        nextid += 1
        return "T-" + tablename + String(nextid)
    }
    public var id : String { name }
    var name : String = ""
    var items : [Tablitem] = []
    var selector: String = ""
    
    public init(_ tablename:Mot) {
        name = tablename.pluriel
        selector = tablename.singulier
        Coderef.all[name] = self
    }
    init(_ tablename:Mot, _ items:[Tablitem]) {
        name = tablename.pluriel
        selector = tablename.singulier
        self.items = items
        Coderef.all[name] = self
    }
    init<T:Pickable>(_ tablename:Mot, _ items:[T]) {
        name = tablename.pluriel
        selector = tablename.singulier
        var tablitems: [Tablitem] = []
        for item in items {
            tablitems.append(Tablitem(item))
        }
        self.items = tablitems
        Coderef.all[name] = self
    }
    
    mutating func insert(_ item:Tablitem) {
        items.append(item)
    }
    
    subscript(_ id:String) -> String {
        var found = "nil"
        for item in items {
            if item.id == id {
                found = item.label
            }
        }
        return found
    }
}


let banques = Coderef(Mot("banque", "banques"),
[
    Tablitem("SG", "Société Générale"),
    Tablitem("CM", "Crédit Mutuel"),
    Tablitem("BP", "Banque Postale")
])
