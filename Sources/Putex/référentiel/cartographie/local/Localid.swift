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
    static func local() -> Int {
        next.three += 1
        return next.three
    }
    
    var quartier : Int
    var parcelle : Int?
    var local: Int?
    
    // initialisation d'une division inférieure
    public init (_ localid:Localid? = nil){
        if let first = localid {
            quartier = first.quartier
            if let second = first.parcelle {
                parcelle = second
                local = Localid.local()
            } else {
                parcelle = Localid.parcelle()
            }
        } else {
            quartier = Localid.quartier()
        }
    }
}


