//
//  Tableref.swift
//  Putex
//
//  Created by Herve Crespel on 01/10/2024.
//


struct Tablitem: Codable, Identifiable, Classable {
    static var prompt = "item"
   
    var id : String
    var label : String
    
    init(_ id:String, _ desc:String) {
        self.id = id
        label = desc
    }
    
}

// le nom Tableref évite la confusion avec Foundation.Table
//
public struct Tableref: Codable, Identifiable{
    public var label: String {name}
    
    public static var prompt = "tables"
    
    static var all: [String:Tableref] = [:]
    
    static var nextid = 0
    public static func newid(_ tablename:String) -> String {
        nextid += 1
        return "T-" + tablename + String(nextid)
    }
    public var id : String { name }
    var name : String = ""
    var items : [Tablitem] = []
    var selector: String = ""
    
    public init(_ tablename:String) {
        name = tablename
        selector = tablename
        Tableref.all[name] = self
    }
    init(_ tablename:String, _ items:[Tablitem]) {
        name = tablename
        selector = tablename
        self.items = items
        Tableref.all[name] = self
    }
    
    mutating func insert(_ item:Tablitem) {
        items.append(item)
    }
}


let banques = Tableref("banques",
[
    Tablitem("SG", "Société Générale"),
    Tablitem("CM", "Crédit Mutuel"),
    Tablitem("BP", "Banque Postale")
])
