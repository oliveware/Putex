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
    
    var isNan: Bool {
        voie == "" && num == ""
    }
    
    var adresse:String {
        num + " " + voie + "\n" + codepostal
    }
    
    func adresse(_ complement:String) -> String {
        let line1 = num + " " + voie + "\n"
        let line2 = complement == "" ? "" : complement + "\n"
        return line1 + line2 + codepostal + " "
    }
    
    init() {}
    
    public init(_ numero:String, _ vn:String, _ cp:String) {
        num = numero
        voie = vn
        codepostal = cp
    }
}


public struct AdressePostale: Codable {
    var l1:String
    var l2:String?
    var l3:String
    var l4:String
    var l5:String?
    
    public init(l1: String, l3: String, l4: String, l2: String? = nil, l5: String? = nil) {
        self.l1 = l1
        self.l2 = l2
        self.l3 = l3
        self.l4 = l4
        self.l5 = l5
    }
    
    public var astring: String {
        var lines = l1 + "\n"
        if l2 != nil {lines = lines + l2! + "\n"}
        lines = lines + l3 + "\n"
        lines = lines + l4
        if l5 != nil {lines = "\n" + lines + l5!}
        return lines
    }
    
    public init(_ nom:String, _ numvoie:NumVoie, _ complement:String? = nil) {
        l1 = nom
        l2 = complement
        l3 = numvoie.num + " " + numvoie.voie
        l4 = numvoie.codepostal + "" //Commune[codepostal]
    }
    
    public init() {
        l1 = ""
        l3 = ""
        l4 = ""
    }
}
