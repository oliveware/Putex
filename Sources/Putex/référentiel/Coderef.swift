//
//  Coderef.swift
//  Putex
//
//  Created by Herve Crespel on 01/10/2024.
//


public struct Head: Codable, Identifiable, Pickable {
    public static var selector = "item"
    
    public var id:String {code}
    var code : String
    public var label : String
    
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
    public var label: String {name.pluriel}
    
    public static var allprompt = "tables"
    
    public static var all: [String:Coderef] = [:]
    public static func find(_ name:String) -> Coderef {
        all[name] ?? empty
    }
    static var empty: Coderef {
        Coderef(Mot("vide",nil))
    }
    
    static var nextcode = 0
    public static func newcode(_ domain:String) -> String {
        nextcode += 1
        return "T-" + domain + String(nextcode)
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
    public init<T:Pickable>(_ tablename:Mot, _ items:[T]) {
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
    
    mutating func insert<T:Pickable>(_ item:T) {
        insert(Head(item))
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



