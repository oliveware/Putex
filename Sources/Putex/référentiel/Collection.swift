//
//  Collection.swift
//  Putex
//
//  Created by Herve Crespel on 17/03/2025.
//

import Foundation

public protocol Collectable : Codable, Identifiable {
    static var unknown:Self {get}
    static var all:[Self] {get}

    var id:String {get set}
    var label:String {get set}
}

public struct Collection<T:Collectable>:Codable {
   // private var all:[T] = []
    
   /* public init() {
        all = T.all
    }
    
    public init(_ json:String = "") {
        var jsonData: Data
        if json == "" {
            jsonData = deviseref.data(using: .utf8)!
        } else {
            jsonData = json.data(using: .utf8)!
        }
        let articles = try! JSONDecoder().decode([T].self, from: jsonData)
        all = articles
    }*/
    
   public subscript(_ id:String) -> T {
        var found : T?
       for article in T.all {
            if article.id == id {
                found = article
                break
            }
        }
       return found ?? T.unknown
    }
    
    public func find(_ label:String) -> T {
        var found : T?
        for article in T.all {
            if article.label == label {
                found = article
                break
            }
        }
        return found ?? T.unknown
     }
}
