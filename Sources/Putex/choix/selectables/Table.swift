//
//  Table.swift
//  Putex
//
//  Created by Herve Crespel on 01/10/2024.
//


struct Tablitem: Codable, Identifiable, Classable {
    static var prompt = "item"
    
   
    var id :String {code}
    var code : String
    var label : String
    
    init(_ id:String, _ desc:String) {
        code = id
        label = desc
    }
    
}


public struct Table: Codable, Identifiable{
    public var label: String {name}
    
    public static var prompt = "tables"
    
    static var all: [String:Table] = [:]
    
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
        Table.all[name] = self
    }
    init(_ tablename:String, _ items:[Tablitem]) {
        name = tablename
        selector = tablename
        self.items = items
        Table.all[name] = self
    }
    
    mutating func insert(_ item:Tablitem) {
        items.append(item)
    }
}


let banques = Table("banques",
[
    Tablitem("SG", "Société Générale"),
    Tablitem("CM", "Crédit Mutuel"),
    Tablitem("BP", "Banque Postale")
])
