//
//  File.swift
//  
//
//  Created by Herve Crespel on 03/06/2024.
//

import Foundation


public enum CompteBancaire: String, Codable, Selectable {
    public var id: Self { self }
    static var all : [Self] = [.courant,.épargne,.pea,.titre]
    
    public static var selector: String = "compte bancaire"
    public var label: String {self.rawValue}
    
    case courant     = "compte bancaire"
    case épargne    = "livret d'épargne"
    case pea        = "PEA - compte espèces PEA"
    case titre     = "compte titre - espèces"
    
    var description : String {
        
        switch self {
        case .courant:
            "compte courant détenu dans une banque"
        case .épargne:
            "livret d'épargne"
        case .pea:
            "compte espèces de PEA"
        case .titre:
            "compte espèces de compte titre"
        }
    }
}
