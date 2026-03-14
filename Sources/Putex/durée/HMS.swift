//
//  File.swift
//  
//
//  Created by Herve Crespel on 16/12/2023.
//

import Foundation


public struct HMS : Codable, Equatable {
    public static func == (_ lhs: HMS,_ rhs: HMS) -> Bool {
        lhs.h == rhs.h && lhs.mn == rhs.mn && lhs.s == rhs.s
    }
    public static var NaN: HMS {
        HMS(0,0,0)
    }
    
    var h: Int
    var mn: Int
    var s: Int
    
    public init(_ heure: Int, _ minute: Int, _ seconde: Int) {
        h = heure
        mn = minute
        s = seconde
    }
    
    public var astring: String {
        return String(h) + ":" + String(mn) + ":" + String(s)
    }
}
