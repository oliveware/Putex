//
//  Deviset.swift
//  Putex
//
//  Created by Herve Crespel on 18/10/2024.
//

import Foundation

public struct Deviset:Codable {
    var all:[Devise] = []
    

    public init(_ json:String = "") {
        var jsonData: Data
        if json == "" {
            jsonData = deviseref.data(using: .utf8)!
        } else {
            jsonData = json.data(using: .utf8)!
        }
        let devises = try! JSONDecoder().decode(Deviset.self, from: jsonData)
        self = devises
    }
    
   public subscript(_ code:String) -> Devise {
        var found : Devise?
        for devise in all {
            if devise.code == code {
                found = devise
                break
            }
        }
       return found ?? Devise.unknown
    }
    
    public func match(_ symbol:Character) -> Devise {
        var found : Devise?
        for devise in all {
            if devise.symbol == String(symbol) {
                found = devise
                break
            }
        }
        return found ?? Devise.unknown
     }
}
