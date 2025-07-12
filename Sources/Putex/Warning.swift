//
//  Warning.swift
//  Putex
//
//  Created by Herve Crespel on 05/07/2025.
//

public struct Warning {
    public static var vide = Warning("aucun", "défini")
        var begin = ""
        var end = ""
        var singulier = true
    
    init(_ b:String, _ e:String, _ s:Bool = true) {
            begin = b
            end = e
            singulier = s
        }
    
    func around(_ mot:Mot) -> String {
        if singulier {
            switch mot.genre {
            case .m, .n, .none:
                return begin + " " + mot.singulier + " " + end
            case .f:
                return begin + "e " + mot.singulier + " " + end + "e"
            }
        } else {
            switch mot.genre {
            case .m, .n, .none:
                return begin + "s " + mot.pluriel + " " + end + "s"
            case .f:
                return begin + "es " + mot.pluriel + " " + end + "es"
            }
        }
    }
    
}
