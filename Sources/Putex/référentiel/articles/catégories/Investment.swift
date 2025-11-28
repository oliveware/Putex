//
//  Investment.swift
//  Semantex
//
//  Created by Herve Crespel on 02/07/2025.
//


public enum Investment : String, Codable, Identifiable {
    public var id : Self { self }
    
    case auto = "automobile"
    case immobilier = "immobilier"
    case capital = "actions"
    
    static var all: [Investment] = [
        .auto, .immobilier, .capital
    ]
}
