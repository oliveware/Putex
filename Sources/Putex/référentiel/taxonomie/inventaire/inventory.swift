//
//  inventory.swift
//  Putex
//
//  Created by Herve Crespel on 05/07/2025.
//

public protocol Inventory: Codable, Identifiable {
    var id : String {get}
}
