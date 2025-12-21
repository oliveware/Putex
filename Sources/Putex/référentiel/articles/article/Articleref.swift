//
//  Articleref.swift
//  Semantex
//
//  Created by Herve Crespel on 13/11/2025.
//


import Foundation

import Taxionomy
import Fichiers

public struct Articleref: Codable {
    
    public var articles : [Article] = []
    public var types: [TypeArticle] = []
    var besoins = Taxionomy()
    var contenants = Taxionomy()
    var fermetures = Taxionomy()
    var soustypes: [String:Taxionomy] = [:]
    var cadrages: [String:Cadrage] = [:]
    
    var cache = Cache()
    
    public init() {}
    
    public init(_ endpoint:String) {
        besoins = cache.get("besoins", endpoint)
        contenants = cache.get("emballages", endpoint)
        fermetures = cache.get("fermetures", endpoint)
    }
    public init(_ nom:String, _ endpoint:String) {
        self = cache.get(nom, endpoint)
    }
    
    public init(_ ref:Articleref) {self = ref}
    
    public func article(_ id: String) -> Article {
        var found = Article()
        for article in articles {
            if id == article.id {
                found = article
            }
        }
        return found
    }
    
    public func type(_ id:String) -> TypeArticle {
        var found = TypeArticle()
        for type in types {
            if type.id == id { found = type }
        }
        return found
    }
    
    public mutating func insert(_ type:TypeArticle) {
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
    
    func sametid(_ tidid:String) -> [Article] {
        articles.filter({article in tidid == article.tid})
    }
    func sameparent(_ parentid:String) -> [Article] {
        articles.filter({article in TID(article.tid).belongsto(parentid)})
    }
    
    mutating func insert(_ article:Article) {
        var found = false
        var new:[Article] = []
        for item in articles {
            if article.id == item.id {
                new.append(article)
                found = true
            } else {
                new.append(item)
            }
        }
        if found { articles = new } else { articles = [article] + articles }
    }
    
    mutating func delete(_ article:Article) {
        var new : [Article] = []
        for item in articles {
            if item.id != article.id {
                new.append(item)
            }
        }
        articles = new
    }
    
}
