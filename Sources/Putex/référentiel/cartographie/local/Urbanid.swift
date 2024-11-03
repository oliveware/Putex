//
//  Urbanid.swift
//  Putex
//
//  Created by Herve Crespel on 01/11/2024.
//


public struct Urbanid:Codable {
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
        case quartier
        case parcelle
        case local
    }
    
    var quartier : Int
    var parcelle : Int?
    var local : Int?
    
    public init(_ type:Urbanid.Kind) {

        switch type {
        case .quartier:
            quartier = Urbanid.first()
        case .parcelle:
            let next = Urbanid.second()
            quartier = next.one
            parcelle = next.two
        case .local:
            let next = Urbanid.third()
            quartier = next.one
            parcelle = next.two
            local = next.three
        }
    }
}


