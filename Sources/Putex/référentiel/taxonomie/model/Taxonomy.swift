//
//  Globalset.swift
//  Taxonomie
//
//  Created by Herve Crespel on 07/07/2025.
//
import Foundation


public struct Taxonomy: Codable {
    
    var items : [Nivzero]
    
   public init(_ json:String) {
        let jsonData = json.data(using: .utf8)!
        let set = try! JSONDecoder().decode(Taxonomy.self, from: jsonData)
        self = set
        TID.nextinit(set.items)
    }
    
    subscript(_ id:Int) -> Nivzero? {
        var found : Nivzero?
        for nivzero in items {
            if nivzero.id == id {
                found = nivzero
                break
            }
        }
        return found
    }
}
