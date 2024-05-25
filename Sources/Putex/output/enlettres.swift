//
//  enlettres.swift
//  
//
//  Created by Herve Crespel on 04/02/2023.
//

import Foundation

// écriture d'un (petit) nombre en toutes lettres
// vieil algorithme qui évite d'importer AllDigit
public struct Français {
    
        let  masculin = ["zéro", "un", "deux", "trois", "quatre", "cinq", "six", "sept", "huit", "neuf","dix","onze","douze","treize","quatorze", "quinze", "seize", "dix-sept","dix-huit","dix-neuf"]
        let  feminin = ["zéro", "une", "deux", "trois", "quatre", "cinq", "six", "sept", "huit", "neuf","dix","onze","douze","treize","quatorze", "quinze", "seize", "dix-sept","dix-huit","dix-neuf"]
            
        let dizaines = ["vingt", "trente", "quarante", "cinquante", "soixante", "soixante-dix", "quatre-vingt", "quatre-vingt-dix"]
        let singrand = ["cent", "mille", "million", "milliard", "billion", "billiard", "trillion"]
        let plugrand = ["cents" ,"mille","millions", "milliards", "billions", "billiards", "trillions"]
        
        let moins = "moins"
        
        let greatest = 1000000 * 1000000 * 1000000
        let powers = [100, 1000, 1000000, 1000000000, 1000000000000, 1000000000000000, 1000000000000000000]
    
    public init() { }
    
    public func lit(_ value: Int, _ m: Bool = true) -> String {
        var texte = ""
        if value == 0 {
            return masculin[0]
        } else {
            
            if value < 0 {
                texte = moins + " " + construct(-value, m)
            } else {
                texte = construct(value, m)
            }
            
            return texte
        }
    }
    
    func lit(_ chiffres: String) -> String {
        if chiffres == "" {
            return ""
        } else {
            let value = Int(chiffres) ?? 0
            return lit(value)
        }
    }
    
    func construct(_ n: Int, _ m: Bool = true)->String {
        
        if n < powers[0] {
            return dizunit(n, m)
        } else {
            if n < powers[1] {
                return centdizunit(n, m)
            } else {
                if n < powers[2] {
                    return mil(n)
                } else {
                    return String(n)
                }
            }
        }
    }

    
    public func dizunit(_ n : Int, _ m :Bool = true)-> String {
        let un = n%10
        let dizaine = ((n-un)/10)%10
        switch dizaine {
        case 0:
            if un == 0 {
                return ""
            } else {
                return masculin[un]
            }
        case 1:
            return masculin[10+un]
        case 6:
            switch un {
            case 0:
                return "soixante"
            case 1:
                return m ? "soixante-et-un" : "soixante-et-une"
            default:
                return "soixante-" + feminin[un]
            }
        case 7:
            switch un {
            case 0:
                return "soixante-dix" //dizaines[dizaine-2]
            case 1:
                return "soixante-et-onze" //dizaines[dizaine-3] + "-et-" + vingt[un+10]
            default:
                return dizaines[dizaine-3] + "-" + masculin[un+10]
            }
        case 8:
            if un == 0 {
                return "quatre-vingts"
            } else {
                return "quatre-vingt-" + (m ? masculin[un] : feminin[un])
            }
        case 9:
            if un == 0 {
                return dizaines[dizaine-2]
            } else {
                return dizaines[dizaine-3] + "-" + (m ? masculin[10+un] : feminin[un+10])
            }
        default:
            switch un {
            case 0:
                return dizaines[dizaine-2]
            case 1:
                return dizaines[dizaine-2] + "-et-" + (m ? masculin[1] :feminin[1])
            default:
                return dizaines[dizaine-2] + "-" + masculin[un]
            }
        }
    }
    public func centdizunit(_ n : Int, _ m:Bool = true)-> String {
        let cent = ((n-n%100)/100)%10
     
        switch cent {
        case 0:
            return dizunit(n)
        case 1:
            if n%100 == 0 {
                return singrand[0]
            } else {
                return singrand[0] + "-" + dizunit(n, m)
            }
            
        default:
            if n%100 == 0 {
                return feminin[cent] + "-cents"
            } else {
                return feminin[cent] + "-cent-" + dizunit(n, m)
            }
        }
    }
    public func mil(_ n:Int)-> String {
        let mil = ((n-n%1000)/1000)%1000
        
        let cdu = n%1000 == 0 ? "" : centdizunit(n%1000)
        
        switch mil {
        case 0:
            return centdizunit(n%1000)
        case 1:
            return singrand[1] + " " + cdu
        case 80:
            return "quatre-vingt mille " + cdu
        default:
            return construct(mil) + " " + singrand[1] + " " + cdu
        }
    }

}

public extension Int {
    var enlettres: String {
        let writer = Français()
        return writer.lit(self)
    }
}
