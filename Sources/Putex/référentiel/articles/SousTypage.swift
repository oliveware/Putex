//
//  SousType.swift
//  Putex
//
//  Created by Herve Crespel on 25/11/2025.
//

public enum SousTypeRef: String, Codable, Identifiable {
    static var all: [SousTypeRef] = [.contenant, .fermeture, .local]
    
    public var id: Self {self}
   
    case contenant = "contenant"
    case fermeture = "fermeture"
    case local = "local"
  //  case médicament
  //  case auto(Int)
    case none = "NaN"

}

struct SousType: Codable {
    var ref: SousTypeRef?
    var id : String = ""
    
    init() {}
    init( _ ref:SousTypeRef?, id:String = "") {
        self.ref = ref
        self.id = id
    }
}
