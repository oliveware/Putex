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
    
    public var isNaN: Bool {
        voie == "" || num == "" || codepostal == ""
    }
    
    public var isfull: Bool {
        voie.count > 7 && num != "" && codepostal.count > 4
    }
    
    public var adresse:String {
        num + " " + voie + "\n" + codepostal
    }
    
    public func adresse(_ complement:String? = nil) -> String {
        let line1 = num + " " + voie
        let line2 = complement == nil ? "" :  "\n" + complement!
        return line1 + line2 + "\n" + codepostal + " "
    }
    
    init() {}
    
    public init(_ numero:String, _ vn:String, _ cp:String) {
        num = numero
        voie = vn
        codepostal = cp
    }
}




