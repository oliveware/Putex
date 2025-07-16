//
//  TID.swift
//  Taxonomie
//
//  Created by Herve Crespel on 06/07/2025.
//

import Foundation

public struct TID : Codable, Identifiable, Equatable{
    public static var NA = TID([0,0,0,0,0,0])
    private static var next = (zero:0, one:0, two:0, three:0, four:0, five:0)
    static func nextinit(_ nivzeros: [Nivzero]) {
        let zero = nivzeros.count
        var one = 0
        var two = 0
        var three = 0
        var four = 0
        var five = 0
        for nivzero in nivzeros {
            one += nivzero.one.count
            for nivone in nivzero.one {
                two += nivone.two.count
                for nivtwo in nivone.two {
                    three += nivtwo.three.count
                    for nivthree in nivtwo.three {
                        four += nivthree.four.count
                        for nivfour in nivthree.four {
                            five += nivfour.five.count
                        }
                    }
                }
            }
        }
        next = (zero:zero, one:one, two:two, three:three, four:four, five:five)
    }
    static func nivzero() -> Int {
        next.zero += 1 ; return next.zero
    }
    static func nivone() -> Int {
        next.one += 1 ; return next.one
    }
    static func nivtwo() -> Int {
        next.two += 1 ; return next.two
    }
    static func nivthree() -> Int {
        next.three += 1 ; return next.three
    }
    static func nivfour() -> Int {
        next.four += 1 ; return next.four
    }
    static func nivfive() -> Int {
        next.five += 1 ; return next.five
    }
    
    var nivzero : Int
    var nivone : Int?
    var nivtwo : Int?
    var nivthree : Int?
    var nivfour : Int?
    var nivfive : Int?
    
    // initialisation du niveau inférieur
    public init(_ tid:TID? = nil) {
        if let parent = tid {
            nivzero = parent.nivzero
            if let first = parent.nivone {
                nivone = first
                if let second = parent.nivtwo {
                    nivtwo = second
                    if let third = parent.nivthree {
                        nivthree = third
                        if let fourth = parent.nivfour {
                            nivfour = fourth
                            nivfive = TID.nivfive()
                        } else {
                            nivfour = TID.nivfour()
                        }
                    } else {
                        nivthree = TID.nivthree()
                    }
                } else {
                    nivtwo = TID.nivtwo()
                }
            } else {
                nivone = TID.nivone()
            }
        } else {
            nivzero = TID.nivzero()
        }
    }
    
    public init(_ tab:[Int]) {
        let div = tab.count
        if div > 0 && tab[0] > 0 {
            nivzero = tab[0]
            if div > 1 && tab[1] > 0 {
                nivone = tab[1]
                if div > 2 && tab[2] > 0  {
                    nivtwo = tab[2]
                    if div > 3 && tab[3] > 0  {
                        nivthree = tab[3]
                        if div > 4 && tab[4] > 0  {
                            nivfour = tab[4]
                            if div == 6 && tab[5] > 0  {
                                nivfive = tab[5]
                            }
                        }
                    }
                }
            }
            print(self)
        } else {
            nivzero = TID.nivzero()
        }
    }
    
    public var id: String {
        var t = String(nivzero)
        if let co =  nivone {
            t = t + "-" + String(co)
            if let r = nivtwo {
                t = t + "-" + String(r)
                if let c = nivthree {
                    t = t + "-" + String(c)
                    if let q = nivfour {
                        t = t + "-" + String(q)
                        if let p = nivfive {
                            t = t + "-" + String(p)
                        }
                    }
                }
            }
        }
        return t
    }
    
    public func show(sep:String = "-")->String {
        Niveau(self).show(sep)
    }
    public var tab: [Int] {
        var t : [Int] = [nivzero]
        if let co =  nivone {
            t.append(co)
            if let r = nivtwo {
                t.append(r)
                if let c = nivthree {
                    t.append(c)
                    if let q = nivfour {
                        t.append(q)
                        if let p = nivfive {
                            t.append(p)
                        }
                    }
                }
            }
        }
        return t
    }
    
    public func belongsto(_ tid:TID) -> Bool {
        var belong = tid.nivzero == nivzero
        if belong {
            if let first = tid.nivone {
                if first == nivone {
                    if let second = tid.nivtwo {
                        if second == nivtwo {
                            if let third = tid.nivthree {
                                if third == nivthree {
                                    if let fourth = tid.nivfour {
                                        if fourth == nivfour {
                                            if let fifth = tid.nivfive {
                                                belong = fifth == nivfive
                                            }
                                        } else { belong = false }
                                    }
                                } else { belong = false }
                            }
                        } else { belong = false }
                    }
                } else { belong = false }
            }
        }
        return belong
    }
    
    public static func == (a:TID, b:TID) -> Bool {
        a.nivzero == b.nivzero &&
        a.nivone == b.nivone &&
        a.nivtwo == a.nivtwo &&
        a.nivthree == a.nivthree &&
        a.nivfour == a.nivfour &&
        a.nivfive == a.nivfive
    }
}











