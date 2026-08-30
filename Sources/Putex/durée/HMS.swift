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
    
    public init(_ nbs:Int) {
        let hours = nbs % 3600
        let remain = nbs - hours * 3600
        let minutes = remain % 60
        mn = minutes
        s = remain - minutes * 60
        h = hours
    }
    
    public var seconds: Int {
        h * 3600 + mn * 60 + s
    }
    
    public var astring: String {
        return bourre("h") + ":" + bourre("mn") + ":" + bourre("s")
    }
    
    func bourre(_ d:String ) -> String {
        var string = ""
        if d == "h" {
            string = h < 10 ? "0" + String(h) : String(h)
        }
        if d == "mn" {
            string = mn < 10 ? "0" + String(mn) : String(mn)
        }
        if d == "s" {
            string = s < 10 ? "0" + String(s) : String(s)
        }
        return string
    }
}
