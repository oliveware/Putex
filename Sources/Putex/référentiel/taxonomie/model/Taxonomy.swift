//
//  Globalset.swift
//  Taxonomie
//
//  Created by Herve Crespel on 07/07/2025.
//
import Foundation


public struct Taxonomy: Codable {
    
    var items : [Nivzero]
    
   public init(_ json:String) {
        let jsonData = json.data(using: .utf8)!
        let set = try! JSONDecoder().decode(Taxonomy.self, from: jsonData)
        self = set
        //TID.nextinit(set.items)
    }
    
    subscript(_ id:Int) -> Nivzero? {
        var found : Nivzero?
        for nivzero in items {
            if nivzero.id == id {
                found = nivzero
                break
            }
        }
        return found
    }
    
    var liste: [String] {
        var lines:[String] = []
        var line = ""
        for zero in items {
            line = zero.nom
            lines.append(line)
            if zero.one.count > 0 {
                for one in zero.one {
                    line = zero.nom + " | " + one.nom
                    lines.append(line)
                    if one.two.count > 0 {
                        for two in one.two {
                            line = zero.nom + " | " + one.nom + " | " + two.nom
                            lines.append(line)
                            if two.three.count > 0 {
                                for three in two.three {
                                    line = zero.nom + " | " + one.nom + " | " + two.nom + " | " + three.nom
                                    lines.append(line)
                                    if three.four.count > 0 {
                                        for four in three.four {
                                            line = zero.nom + " | " + one.nom + " | " + two.nom + " | " + three.nom + " | " + four.nom
                                            lines.append(line)
                                            if four.five.count > 0 {
                                                for five in four.five {
                                                    line = zero.nom + " | " + one.nom + " | " + two.nom + " | " + three.nom + " | " + four.nom + " | " + five.nom
                                                    lines.append(line)
                                                }
                                            } else { line = "" }
                                        }
                                    } else { line = "" }
                                }
                            } else { line = "" }
                        }
                    } else { line = "" }
                }
            }
        }
        return lines
    }
    
    func show(_ tid:TID, _ short:Bool = true, _ sep:String = " | ") -> String {
        print("taxo : \(tid.tab)")
        var full = ""
        var last = ""
        let tab = tid.tab
        if tab.count > 0 {
            for zero in items {
                if zero.id == tid.zero {
                    last = zero.nom
                    full = last
                    if tab.count > 1 {
                        for one in zero.one {
                            if one.id == tid.one {
                                last = one.nom
                                full = full + sep + last
                                if tab.count > 2 {
                                    for two in one.two {
                                        if two.id == tid.two {
                                            last = two.nom
                                            full = full + sep + last
                                            if tab.count > 3 {
                                                for three in two.three {
                                                    if three.id == tid.three {
                                                        last = three.nom
                                                        full = full + sep + last
                                                        if tab.count > 4 {
                                                            for four in three.four {
                                                                if four.id == tid.four {
                                                                    last = four.nom
                                                                    full = full + sep + last
                                                                    if tab.count > 5 {
                                                                        for five in four.five {
                                                                            if five.id == tid.five {
                                                                                last = five.nom
                                                                                full = full + sep + last
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return short ? last : full
    }
    

}
