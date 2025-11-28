//
//  Classification.swift
//  Semantex
//
//  Created by Herve Crespel on 30/06/2025.
//

public struct Classification: Codable, Equatable {
    public static func == (a:Classification, b:Classification) -> Bool {
        (a.cat == b.cat) && (a.sub == b.sub)
    }
    var cat:Category?
    var sub:String
    init(_ category:Category?, _ kind:String) {
        cat = category
        sub = kind
    }
    var astring:String {
        if cat == nil {
            return ""
        } else {
            return cat!.rawValue + " - " + sub
        }
    }
    var isNaN: Bool { cat == nil }
}
