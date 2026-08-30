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
        Datheure(Date.now)
    }
    
    var j : Int = 0
    var m : Int
    var a: Int
    
    var h: Int
    var mn: Int
    var s: Int
    
    public init(_ date :Date){
       // formatted(date: Date.FormatStyle.DateStyle, time: Date.FormatStyle.TimeStyle) -> String
        let jma = date.formatted(
            Date.FormatStyle()
                .locale(Locale(identifier: "fr_FR"))
                .year(.defaultDigits)
                .month(.twoDigits)
                .day(.twoDigits)
        )
        .split(separator: "/")
        let hms = date.formatted(
            Date.FormatStyle()
                .locale(Locale(identifier: "fr_FR"))
                .hour()
                .minute()
                .second()
            )
            .split(separator: ":")
        j = Int(jma[0]) ?? 0
        m = Int(jma[1]) ?? 0
        a = Int(jma[2]) ?? 0
        h = Int(hms[0]) ?? 0
        mn = Int(hms[1]) ?? 0
        s = Int(hms[2]) ?? 0
    }
    
    public init(_ jour:Int, _ mois:Int, _ an:Int, _ heure: Int, _ minute: Int, _ seconde: Int) {
        j = jour
        m = mois
        a = an
        h = heure
        mn = minute
        s = seconde
    }
    public init(_ date:JMA, _ heure:HMS? = nil) {
        j = date.jour
        m = date.mois
        a = date.année
        h = heure?.h ?? 0
        mn = heure?.mn ?? 0
        s = heure?.s ?? 0
    }
    public var date: JMA {
        JMA(j,m,a)
    }
    public var heure:HMS {
        HMS(h,mn,s)
    }
    
    public var astring: String {
        "le " + date.astring + " à " + heure.astring
    }
    public var capstring: String {
        "LE " + date.astring + " A " + heure.astring
    }
}
