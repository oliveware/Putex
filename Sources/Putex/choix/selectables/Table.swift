//
//  Table.swift
//  Putex
//
//  Created by Herve Crespel on 01/10/2024.
//


struct Tablitem: Codable, Identifiable, Hashable {
   
    var id :String {code}
    var code : String
    var description : String
    
    init(_ tablename:String, _ itemid:String, _ itemdesc:String) {
       // id = Table.newid(tablename)
        code = itemid
        description = itemdesc
        if Table.all[tablename] != nil {
            Table.all[tablename]!.insert(self)
        } else {
            var table = Table(tablename)
            table.insert(self)
        }
    }
    
    init(_ id:String, _ desc:String) {
        code = id
        description = desc
    }
    
    
}


public struct Table: Codable, Identifiable {
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
