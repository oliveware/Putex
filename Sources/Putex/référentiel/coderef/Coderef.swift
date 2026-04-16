//
//  Coderef.swift
//  Putex
//
//  Created by Herve Crespel on 01/10/2024.
//

// le nom Coderef évite la confusion avec Foundation.Table
//
import Taxionomy

public struct Coderef: Codable, Identifiable {
    public var label: String {name.pluriel}
    
    public static var allprompt = "tables"
    
    public static var all: [String:Coderef] = [:]
    public static func find(_ name:String) -> Coderef {
        all[name] ?? empty
    }
    public static func find(_ domain:Codomain) -> Coderef {
        all[domain.name.pluriel] ?? empty
    }
    static var empty: Coderef {
        Coderef(Mot("vide",nil))
    }
    
    public static func newcode(_ domain:Codomain) -> String {
        let nextcode = find(domain).next
        switch domain {
        case .article:
            Article.nextid += 1
            return "A#" + String(Article.nextid)
        default:
            return domain.rawValue + "#" + String(nextcode)
        }
    }
    
    
    public var id : String { name.pluriel }
    var name : Mot
    var items : [Head] = []
    var selector: String = ""
    
    var next: Int {
        var max = 0
        for item in items {
            let num = Int(item.code.split(separator:"#")[1]) ?? items.count
            if num > max { max = num }
        }
        return max + 1
    }
    
    public init(_ domain:Codomain) {
        let tablename = domain.name
        name = tablename
        selector = tablename.singulier
        Coderef.all[name.pluriel] = self
    }
    public init<T:Oxet>(_ domain:Codomain, _ items:[T]) {
        self.init(domain.name, items)
    }
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
        Coderef.all[name.pluriel] = self
    }
    
    public mutating func insert<T:Oxet>(_ item:T) {
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



