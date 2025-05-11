//
//  Taux.swift
//
//
//  Created by Herve Crespel on 11/07/2024.
//

import Foundation


public struct Taux: Codable {
    var value: Nombre
    var historique : [Date:Nombre]
    
    init() {
        value = Nombre(0, 2)
        historique = [:]
    }
}
