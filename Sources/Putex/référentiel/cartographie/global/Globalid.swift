//
//  LID.swift
//  Putex
//
//  Created by Herve Crespel on 01/11/2024.
//

public struct Globalid:Codable {
    static var NA = Globalid()
    static var next = (one:0, two:0, three:0)
    static func territoire() -> Int {
        next.one += 1 ; return next.one
    }
    static func region() -> Int {
        next.two += 1 ; return next.two
    }
    static func commune() -> Int {
        next.three += 1
        return next.three
    }
    
    
    var territoire : Int
    var region : Int?
    var commune : Int?
    
    public init(_ globalid:Globalid? = nil) {
        if let first = globalid {
            territoire = first.territoire
            if let second = first.region {
                region = second
                commune = Globalid.commune()
            } else {
                region = Globalid.region()
            }
        } else {
            territoire = Globalid.territoire()
        }
    }
}





