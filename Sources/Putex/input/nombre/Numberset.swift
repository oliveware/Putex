//
//  Numberset.swift
//  Putex
//
//  Created by Herve Crespel on 17/10/2024.
//

public enum NumberSet: Equatable {
    
    case naturel
    case relatif
    case decimal(Int)
    
    var nbdec: Int {
        switch self {
        case .naturel, .relatif:
            return 0
        case .decimal(2):
            return 2
        case .decimal(4):
            return 4
        default:
            return 0
        }
    }
    
    func normalize(_ decimale:String) -> String {
        if self == .naturel || self == .relatif {
            return ""
        } else {
            let nbdecimales = decimale.count
            var norm = decimale
            if nbdecimales != self.nbdec {
                if nbdecimales < self.nbdec {
                    // ajouter les zéros manquants
                    for _ in 0..<self.nbdec-nbdecimales {
                        norm = norm + "0"
                    }
                } else {
                    // enlever les décimales superflues
                    let index = decimale.index(decimale.startIndex, offsetBy: self.nbdec)
                    norm = String(decimale[..<index])
                }
            }
            return norm
        }
    }
}
