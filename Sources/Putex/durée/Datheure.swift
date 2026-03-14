//
//  Datheure.swift
//  Putex
//
//  Created by Herve Crespel on 14/03/2026.
//
import Foundation

public struct Datheure : Codable, Equatable {
    public static func == (_ lhs: Datheure,_ rhs: Datheure) -> Bool {
        lhs.date == rhs.date && lhs.heure == rhs.heure
    }
    
    public static var now: Datheure {
        Datheure(JMA.now, HMS.NaN)
    }
    
    var j : Int = 0
    var m : Int
    var a: Int
    
    var h: Int
    var mn: Int
    var s: Int
    
    public init(_ jour:Int, _ mois:Int, _ an:Int, _ heure: Int, _ minute: Int, _ seconde: Int) {
        j = jour
        m = mois
        a = an
        h = heure
        mn = minute
        s = seconde
    }
    public init(_ date:JMA, _ heure:HMS) {
        j = date.jour
        m = date.mois
        a = date.année
        h = heure.h
        mn = heure.mn
        s = heure.s
    }
    var date: JMA {
        JMA(j,m,a)
    }
    var heure:HMS {
        HMS(h,mn,s)
    }
    
    public var astring: String {
        "le " + date.astring + " à " + heure.astring
    }
    public var capstring: String {
        "LE " + date.astring + " A " + heure.astring
    }
}
