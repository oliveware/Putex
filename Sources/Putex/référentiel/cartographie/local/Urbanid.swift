//
//  Localid.swift
//  Putex
//
//  Created by Herve Crespel on 01/11/2024.
//


public struct Localid:Codable {
    static var next = (one:0, two:0, three:0, four:0)
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
    static func fourth() -> (one:Int, two:Int, three:Int, four:Int) {
        next.four += 1
        return (one:next.one, two:next.two, three:next.three, four:next.four)
    }
    
    public enum Kind {
        case quartier
        case parcelle
        case batiment
        case local
    }
    
    var quartier : Int
    var parcelle : Int?
    var batiment : Int?
    var local: Int?
    
    public init(_ type:Localid.Kind) {
        switch type {
        case .quartier:
            quartier = Localid.first()
        case .parcelle:
            let next = Localid.second()
            quartier = next.one
            parcelle = next.two
        case .batiment:
            let next = Localid.third()
            quartier = next.one
            parcelle = next.two
            batiment = next.three
        case .local:
            let next = Localid.fourth()
            quartier = next.one
            parcelle = next.two
            batiment = next.three
            local = next.four
        }
    }
}


