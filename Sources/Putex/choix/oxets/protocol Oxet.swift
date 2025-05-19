//
//  protocol Oxet.swift
//  Putex
//
//  Created by Herve Crespel on 09/05/2025.
//

public protocol Oxet: Codable, Identifiable {
    var id:String {get}
    var label:String {get}
    static var selector:String {get}
}
