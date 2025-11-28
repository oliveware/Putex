//
//  Utility.swift
//  Semantex
//
//  Created by Herve Crespel on 24/06/2025.
//

public enum Utility : String, Codable, Identifiable {
    public static var selector = "utility"
    
    public var label: String {
        if self == .elec {
            "elec"
        } else {
            self.rawValue
        }
    }
    
    public var id : Self { self }
    
    case elec       = "électricité"
    case eau        = "eau"
    case telecom    = "telecom"
    case presse     = "presse"
    case cloud      = "cloud"
    case stockage   = "stockage"
    
   /* static var all: [Category] = [ .utility(.elec), .utility(.eau), .utility(.telecom), .utility(.presse), .utility(.cloud), .utility(.stockage)]*/
    
    public static var all: [Utility] = [ .elec, .eau, .telecom, .presse, .cloud, .stockage ]
}
