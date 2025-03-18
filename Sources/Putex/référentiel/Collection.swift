//
//  Collection.swift
//  Putex
//
//  Created by Herve Crespel on 17/03/2025.
//

import Foundation

public protocol Collectable : Codable {
    static var unknown:Self {get}
    var code:String {get set}
    var label:String {get set}
}

public struct Collection<T:Collectable>:Codable {
    var all:[T] = []
    

    public init(_ json:String = "") {
        var jsonData: Data
        if json == "" {
            jsonData = deviseref.data(using: .utf8)!
        } else {
            jsonData = json.data(using: .utf8)!
        }
        let devises = try! JSONDecoder().decode([T].self, from: jsonData)
        all = devises
    }
    
   public subscript(_ code:String) -> T {
        var found : T?
        for devise in all {
            if devise.code == code {
                found = devise
                break
            }
        }
       return found ?? T.unknown
    }
    
    public func find(_ label:String) -> T {
        var found : T?
        for devise in all {
            if devise.label == label {
                found = devise
                break
            }
        }
        return found ?? T.unknown
     }
}
