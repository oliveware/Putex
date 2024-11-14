//
//  Numvoie.swift
//  Putex
//
//  Created by Herve Crespel on 13/11/2024.
//

public struct NumVoie: Codable, Equatable {
    public static func == (_ a:NumVoie, _ b:NumVoie) -> Bool {
        a.voie == b.voie && a.num == b.num && a.codepostal == b.codepostal
    }
    
    var voie:   String = ""
    var num:    String = ""
    var codepostal:String = ""
    
    var adresse:String {
        num + " " + voie + "\n" + codepostal
    }
    
    func adresse(_ complement:String) -> String {
        num + " " + voie + "\n" + complement + "\n" + codepostal
    }
    
    init() {}
    
    public init(_ numero:String, _ vn:String, _ cp:String) {
        num = numero
        voie = vn
        codepostal = cp
    }
}
