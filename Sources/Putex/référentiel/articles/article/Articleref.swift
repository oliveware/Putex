//
//  Articleref.swift
//  Semantex
//
//  Created by Herve Crespel on 13/11/2025.
//


import Foundation
import Putex
import Taxionomy

public struct Articleref: Codable {
    
    var articles : [Article] = []
    var nomenclatures = Nomenclatures()
    
    init() {}
    
    func article(_ id: String) -> Article {
        var found = Article()
        for article in articles {
            if id == article.id {
                found = article
            }
        }
        return found
    }
    
   
    var types: [TypeArticle] {nomenclatures.types}
    
    public func type(_ id:String) -> TypeArticle {
        nomenclatures.type(id)
    }
    
    func articlelist(_ tidid:String) -> [Article] {
        articles.filter({article in tidid == article.tid})
    }
    
    public func besoin(_ id:String) -> Taxion {
        nomenclatures.besoin(id)
    }
    
    public func contenant(_ id:String) -> Taxion {
        nomenclatures.contenant(id)
    }
    
    mutating func insert(_ type:TypeArticle) {
        nomenclatures.insert(type)
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
