//
//  File.swift
//  
//
//  Created by Herve Crespel on 19/04/2024.
//

import Foundation

struct Picture: Codable, Identifiable {
    static var nextid = 0
    static func new() -> String {
        nextid += 1
        return String(nextid)
    }
    var id : String
    var width : Int = 200
    var height : Int = 200
    var url : String
    
    init(_ url :String) {
        self.url = url
        id = Picture.new()
    }
}
