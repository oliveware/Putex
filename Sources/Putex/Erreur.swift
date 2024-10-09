//
//  Erreur.swift
//  
//
//  Created by Herve Crespel on 20/05/2024.
//

import Foundation


public struct Erreur {
    var type = ""
    var prop = ""
    var message = ""
    
    init () {}
    
    //  Erreur("problème dans", "Type", "Propriété")
    public init(_ mess:String,_ t:String,_ p:String) {
        type = t
        prop = p
        message = mess
    }
    
    public var show: String {
        let warn = "erreur - \(message)\n(\(type) - \(prop))"
        return warn
    }
    
    public func warn() {
        print(show)
    }
}
