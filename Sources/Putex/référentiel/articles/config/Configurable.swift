//
//  Configurable.swift
//  Putex
//
//  Created by Herve Crespel on 30/11/2025.
//

public protocol Configurable: Codable {
    static func configurer() -> Configurator
}
