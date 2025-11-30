//
//  SousType.swift
//  Putex
//
//  Created by Herve Crespel on 25/11/2025.
//



struct SousType: Codable {
    var ref = Ref.none
    var id : String = ""
    var nom = ""
    
    init() {}
    init( _ ref:Ref, id:String = "") {
        self.ref = ref
        self.id = id
    }
    
    enum Ref: String, Codable, Identifiable {
        static var all: [Ref] = [.contenant, .fermeture, .local]
        
        public var id: Self {self}
       
        case contenant = "contenant"
        case fermeture = "fermeture"
        case local = "local"
      //  case médicament
      //  case auto(Int)
        case none = "NaN"

    }
}
