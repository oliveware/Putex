//
//  Localid.swift
//  Putex
//
//  Created by Herve Crespel on 01/11/2024.
//


public struct Localid:Codable {
    static var next = (one:0, two:0, three:0, four:0)
    static func quartier() -> Int {
        next.one += 1 ; return next.one
    }
    static func parcelle() -> Int {
        next.two += 1 ; return next.two
    }
    static func batiment() -> Int {
        next.three += 1
        return next.three
    }
    static func local() -> Int {
        next.four += 1
        return next.four
    }
    
    var quartier : Int
    var parcelle : Int?
    var batiment : Int?
    var local: Int?
    
    
    public init (_ localid:Localid? = nil){
        if let first = localid {
            quartier = first.quartier
            if let second = first.parcelle {
                parcelle = second
                if let third = first.batiment {
                    batiment = third
                    local = Localid.local()
                } else {
                    batiment = Localid.batiment()
                }
            } else {
                parcelle = Localid.parcelle()
            }
        } else {
            quartier = Localid.quartier()
        }
    }
}


