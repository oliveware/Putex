//
//  File.swift
//  
//
//  Created by Herve Crespel on 16/12/2023.
//

import Foundation


public struct HMS : Codable, Equatable {
    public static func == (_ lhs: HMS,_ rhs: HMS) -> Bool {
        lhs.heure == rhs.heure && lhs.minute == rhs.minute && lhs.seconde == rhs.seconde
    }
    
    var heure: Int
    var minute: Int
    var seconde: Int
    
    public init(heure: Int, minute: Int, seconde: Int) {
        self.heure = heure
        self.minute = minute
        self.seconde = seconde
    }
}
