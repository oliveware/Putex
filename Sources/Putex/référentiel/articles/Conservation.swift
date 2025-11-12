//
//  Conservation.swift
//  Putex
//
//  Created by Herve Crespel on 12/11/2025.
//

struct Conservation : Codable {
    enum Mode : Codable {
        case frais
        case conserve
        case congel
        case vide
        case sec
    }
    var mode: Mode
    var conservateur:String
}
