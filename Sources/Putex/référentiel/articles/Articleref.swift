//
//  Articleref.swift
//  Putex
//
//  Created by Herve Crespel on 12/11/2025.
//
import Taxionomy

public struct Articleref {
    
    var types: [TypeArticle]
    var besoins:Taxionomy
    var contenants:Taxionomy
    
    public func type(_ id:String) -> TypeArticle {
        var found = TypeArticle()
        for type in types {
            if type.id == id { found = type }
        }
        return found
    }

}
