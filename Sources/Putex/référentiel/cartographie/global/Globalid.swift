//
//  LID.swift
//  Putex
//
//  Created by Herve Crespel on 01/11/2024.
//

public struct Globalid:Codable {
    static var NA = Globalid()
    static var next = (one:0, two:0, three:0)
    static func first() -> Int {
        next.one += 1 ; return next.one
    }
    static func second() -> (one:Int, two:Int) {
        next.two += 1 ; return (one:next.one, two:next.two)
    }
    static func third() -> (one:Int, two:Int, three:Int) {
        next.three += 1
        return (one:next.one, two:next.two, three:next.three)
    }
    
    public enum Kind {
        case territoire
        case region
        case commune
    }
    
    var territoire : Int
    var region : Int?
    var commune : Int?
    
    init() {territoire = 0}
    
    public init(_ type:Globalid.Kind) {
        switch type {
        case .territoire:
            territoire = Globalid.first()
        case .region:
            let next = Globalid.second()
            territoire = next.one
            region = next.two
        case .commune:
            let next = Globalid.third()
            territoire = next.one
            region = next.two
            commune = next.three
        }
    }
}





