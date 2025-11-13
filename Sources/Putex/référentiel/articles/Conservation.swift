//
//  Conservation.swift
//  Putex
//
//  Created by Herve Crespel on 12/11/2025.
//

struct Conservation : Codable {
    enum Mode : String, Codable, Enumerable {
        static var selector: String = "conservation"
        
        var label: String {self.rawValue}
        
        var id: String {self.rawValue}
        
        case frais      = "frais"
        case conserve   = "conserve"
        case confiture  = "confiture"
        case congel     = "congelé"
        case vide       = "sous-vide"
        case sec        = "séché"
        case salt       = "salé"
        case alcol      = "alcol"
        case vinaigre   = "vinaigre"
    }
    var mode: Mode?
    var conservateur:String = ""
    
    var isNaN : Bool { mode == nil && conservateur == ""}
    
    init() {}
    
    var show:String {
        var string = mode?.rawValue ?? ""
        if conservateur != "" {
            string = string + " avec " + conservateur
        }
        return string
    }
}



