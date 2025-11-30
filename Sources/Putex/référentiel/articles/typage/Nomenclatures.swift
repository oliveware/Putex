//
//  Nomenclatures.swift
//  Putex
//
//  Created by Herve Crespel on 30/11/2025.
//
import Taxionomy

public struct Nomenclatures : Codable {
    var types: [TypeArticle] = []
    var besoins = Taxionomy()
    var contenants = Taxionomy()
    var fermetures = Taxionomy()
    var soustypes: [String:Taxionomy] = [:]
    var cadrages: [String:Cadrage] = [:]
    
    public init() {}
    
    public func type(_ id:String) -> TypeArticle {
        var found = TypeArticle()
        for type in types {
            if type.id == id { found = type }
        }
        return found
    }
    
    mutating func insert(_ type:TypeArticle) {
        var found = false
        var new:[TypeArticle] = []
        for item in types {
            if type.id == item.id {
                new.append(type)
                found = true
            } else {
                new.append(item)
            }
        }
        if found { types = new } else { types = [type] + types }
    }
    
    public func besoin(_ id:String) -> Taxion {
        besoins.find(id)
    }
    
    public func contenant(_ id:String) -> Taxion {
        contenants.find(id)
    }
    
    public func fermeture(_ id:String) -> Taxion {
        fermetures.find(id)
    }
    
    public func soustype(_ nomref:String, _ id:String) -> Taxion {
        if let ref = soustypes[nomref] {
            return ref.find(id)
        } else {
            return Taxion()
        }
    }
    public func cadrage(_ nom:String) -> Cadrage {
        if let cadrage = cadrages[nom] {
            return cadrage
        } else {
            return Cadrage()
        }
    }

}
