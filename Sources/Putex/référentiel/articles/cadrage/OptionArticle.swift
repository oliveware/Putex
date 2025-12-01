//
//  DetailArticle.swift
//  Semantex
//
//  Created by Herve Crespel on 19/06/2025.
//

public struct OptionArticle: Codable {
    static var natures : [Nature] = [.logement,.garage]
    
   
    // cas d'un local loué
    public var id : String?  //id
    var nature : Nature?
    
    enum Nature : String, Codable, Enumerable {
        static var selector = "option"
        
        var label: String { self.rawValue }
        
        var id: String { self.rawValue }
        
        case logement   = "logement"
        case garage     = "garage"
    }
    
    init() {
        id = ""
    }
    init(_ nature:Nature) {
        id = ""
        self.nature = nature
    }
    
    public var isNaN : Bool { id == "" && nature == nil}
   
    
   
}


