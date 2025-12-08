//
//  SousType.swift
//  Putex
//
//  Created by Herve Crespel on 25/11/2025.
//



struct SousType: Codable {
    var nomref = ""
    var tid  = ""
    var nom = ""

    
    init() {}
    init( _ ref:String, id:String = "") {
        nomref = ref
        tid = id
    }
    
}
