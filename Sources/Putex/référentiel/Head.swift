//
//  Head.swift
//  Putex
//
//  Created by Herve Crespel on 09/05/2025.
//

public struct Head: Codable, Identifiable, Oxet {
    public static var selector = "item"
    
    public var id:String {code}
    var code : String
    public var label : String
    
    init(_ code:String, _ desc:String) {
        self.code = code
        label = desc
    }
    init<T:Oxet>(_ item:T) {
        code = item.id
        label = item.label
    }
}
