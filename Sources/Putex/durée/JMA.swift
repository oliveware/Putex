//
//  JMA.swift
//  Locations
//
//  Created by Herve Crespel on 13/01/2023.
//

import Foundation

func mois(nomfr:String)->Int {
    var numois = -1
    for i in 0...11 {
        if nomfr == JMA.moisfr[i] {
            numois = i + 1
        }
    }
    return numois
}

public struct JMA: Codable, Equatable {
    public static let moisfr = ["janvier","février","mars","avril","mai","juin",
        "juillet","août","septembre","octobre","novembre","décembre"]
    public static let origine = JMA(1,1,2000)
    
    public static func == (_ lhs: JMA,_ rhs: JMA) -> Bool {
        return lhs.jour == rhs.jour && lhs.mois == rhs.mois && lhs.année == rhs.année
    }
    
    public static func < (_ lhs: JMA,_ rhs: JMA) -> Bool {
        if lhs.année == rhs.année {
            if lhs.mois == rhs.mois {
                return lhs.jour < rhs.jour
            } else {
                return lhs.mois < rhs.mois
            }
        } else {
           return lhs.année < rhs.année
        }
    }
    public static func > (_ lhs: JMA,_ rhs: JMA) -> Bool {
        rhs < lhs
    }
    
    public static func + (_ date:JMA, _ delta:Int) -> JMA {
        if delta > 0 {
            if delta + date.jour <= date.nbjm {
                return JMA(delta + date.jour, date.mois, date.année)
            } else {
                var d = Calendar.current.dateComponents([.day,.month,.year], from: date.asDate)
                d.day! += delta
             //   print("day = \(d.day!)")
                if let after = d.date {
                    return JMA(after)
                } else {
                    print ("erreur - date + delta")
                    return JMA.origine
                }
            }
        } else {
            return date - delta
        }
    }
    
    public static func - (_ date:JMA, _ delta:Int) -> JMA {
        if delta > 0 {
            if date.jour - delta > 0 {
                return JMA(date.jour - delta, date.mois, date.année)
            } else {
                if date.jour == delta {
                    if date.mois == 1 {
                        return JMA(31,12,date.année - 1)
                    } else {
                        let nbjm = JMA(1, date.mois-1, date.année).nbjm
                        return JMA(nbjm, date.mois-1, date.année)
                    }
                } else {
                    var d = Calendar.current.dateComponents([.day,.month,.year], from: date.asDate)
                    d.day! -= delta
                 //   print("day = \(d.day!)")
                    if let before = d.date {
                        return JMA(before)
                    } else {
            Erreur("date - delta impossible","JMA", "static -").warn()
                        return JMA.origine
                    }
                }
            }
        } else {
            return date + delta
        }
    }
    
   func decale (_ decalage:Int) -> JMA {
        let newmois = (mois + decalage) % 12
        let deca = (mois + decalage - newmois) / 12
        if newmois == 0 {
            return JMA(jour, 1, année + deca + 1)
        } else {
            return JMA(jour, mois + 1 , année + deca)
        }
    }
    static func indexmois(_ date:JMA) -> Int {
        date.absolumois() - origine.absolumois()
    }
    
    private func absolumois() -> Int {
        année * 12 + mois
    }
    
    public var jour : Int = 0
    public var mois : Int
    public var année: Int
    
    public init (_ j:Int, _ m:Int, _ a:Int) {
        jour = j
        mois = m
        année = a < 100 ? 2000 + a : a
    }
    
    public init(_ jma:String, _ format:String = "JJ/MM/A") {
        let date = jma.split(separator: "/")
        var an:Int = 0
        if date.count == 3 {
            an = Int(date[2]) ?? 0
            année = an < 100 ? 2000 + an : an
            if format == "JJ/MM/A" {
                jour = Int(date[0]) ?? 0
                mois = Int(date[1]) ?? 0
            } else if format == "MM/JJ/A" {
                jour = Int(date[1]) ?? 0
                mois = Int(date[0]) ?? 0
            } else {
                print ("format incorrect \(format)")
                self = JMA.origine
            }
        } else if date.count == 2 {
            an = Int(date[1]) ?? 0
            année = an < 100 ? 2000 + an : an
            if format == "-M/A" {
                mois = Int(date[0]) ?? 0
                jour = 1
            } else if format == "M-/A" {
                mois = Int(date[0]) ?? 0
                jour = nbj(mois)
            } else {
                print ("format incorrect \(format)")
                self = JMA.origine
            }
        } else {
            print ("\(jma) n'est pas une date")
            self = JMA.origine
        }

       
        
    }
    
    public init(_ date :Date){
        let jma = date.formatted(
            Date.FormatStyle()
                .locale(Locale(identifier: "fr_FR"))
                .year(.defaultDigits)
                .month(.twoDigits)
                .day(.twoDigits)
            )
            .split(separator: "/")
        //let dateFormatter = DateFormatter()
        //dateFormatter.dateStyle = .short
        //let jma = dateFormatter.string(from:date).split(separator: "/")
        //print(jma)
        jour = Int(jma[0]) ?? 0
        mois = Int(jma[1]) ?? 0
        année = Int(jma[2]) ?? 0
    }
    
    public var entexte: String {
        let j = jour == 1 ? "1er" : String(jour)
        return "\(j) \(JMA.moisfr[mois-1]) \(année)"
    }
    
    public var astring: String {
        return String(jour) + "/" + String(mois) + "/" + String(année)
    }
    public var asDate: Date {
        let dateFormatter = DateFormatter()
            dateFormatter.locale = Locale(identifier: "fr_FR")
            dateFormatter.dateFormat = "dd/MM/yyyy"
            return dateFormatter.date(from: astring)!
       /* } else {
            print ("erreur - dateFormatter impossible")
            return Date.now
        }*/
    }
    
    public var moisan: String {
        let zois = mois < 10 ? "0\(mois)" : String(mois)
        return zois + String(année)
    }
    public func periode(_ précedente: Bool = false) -> String {
        let moisan: String
           if précedente {
               moisan = mois == 1 ? JMA(1, 12, année-1).moisan : JMA(1, mois-1, année).moisan
           } else {
               moisan = self.moisan
           }
        return moisan
    }
    
   public func jourindex(_ begin: JMA) -> Int {
        let datan = self.année
        var index = self.journum - begin.journum
     //   print(248, date.journum , begin.journum)
        if datan > begin.année {
            for an in begin.année..<datan {
                index += 364
                if an % 4 == 0 {
                    index += 1
                }
            }
        } else {
            if datan < begin.année {
                index = 0
            }
        }
        return index
    }
    
    public func nbj(since ref:JMA) -> Int {
        var nbj : Int
       let calendarnbj = Calendar.current.dateComponents([.day], from: ref.asDate, to: self.asDate).day!
      //  print("calendarnbj: \(calendarnbj)")
        
        if ref.année == année {
            if ref.mois == mois {
                nbj = jour - ref.jour
            } else {
                if ref.mois == mois - 1 {
                    nbj = jour + nbjmp - ref.jour
                } else {
                    nbj = calendarnbj
                }
            }
        } else {
            nbj = calendarnbj
        }
        return nbj
    }
    
    // nombre de jour dans le mois
    public var nbjm: Int {
        nbj(mois)
    }
    
    public var reste: Double {
        let r = nbjm - jour
        return Double(r) / Double(nbjm)
    }
    
    public var passé: Double {
        return Double(jour) / Double(nbjm)
    }
        
    private func nbj(_ mois:Int) -> Int {
        switch mois {
        case 1,3,5,7,8,10,12:
            return 31
        case 4,6,9,11:
            return 30
        case 2:
            if année % 4 == 0 {
                return 29
            } else {
                return 28
            }
        default:
            return 0 // cas impossible
        }
    }
    
    // nombre de jours du mois précédent
    var nbjmp: Int {
        if mois == 1 {
            return JMA(1,12,année-1).nbjm
        } else {
            return JMA(1,mois-1,année).nbjm
        }
    }
    
    // numéro du jour dans l'année
    public var journum: Int {
        var num = jour
        for m in 1..<mois {
           // print (num)
            num += nbj(m)
        }
        return num
    }
    
    var check : Bool {
        return Range(uncheckedBounds: (1,31)).contains(jour)
        && Range(uncheckedBounds: (1,12)).contains(mois)
        && année > 2021
        && nbjm != 0
    }
    
    
}
