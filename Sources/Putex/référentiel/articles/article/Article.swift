//
//  File.swift
//  
//
//  Created by Herve Crespel on 29/12/2023.
//

import Foundation

import Taxionomy

var hp = Article("1-2-4", "heures pleines")
var hc = Article("1-2-4", "heures creuses")
var eau = Article("1-2-4", "eau")
var tel = Article("1-2-4", "mobile")


// un article décrit un modèle et non un exemplaire
// un article est référencé dans le vault
public struct Article : Codable, Identifiable, Oxet {
    // identifiant de l'article
    public var id: String = ""
    // étiquette résumant l'article
    public var label: String = ""
    // identifiant TID.id du type d'article
    public var tid: String = "" // TID.id
    func type(_ ref:Articleref) -> TypeArticle { ref.type(tid) }
    
    // complément pour distinguer deux articles de même type
    var modele:ModeleArticle?
    var option: OptionArticle?
    var conditionnement: Conditionnement?
    // quantité unitaire
    var quantité : Mesure?
    
    mutating func setlabel(_ ref:Articleref) {
        label = type(ref).label + " " + (option?.label ?? "")
    }
    
    var cadré : Bool {
        option != nil
    }
    var conditionné : Bool {
        conditionnement != nil
    }
    var illustré : Bool {
        let modeleillustré = modele?.illustré ?? false
        return modeleillustré
       // let typeillustré = type?.illustré ?? false
    }
    
    public var show:String {
        if label == "" || tid == "" {
            return "article non défini"
        } else {
            return label + " " + (modele?.show ?? "")
        }
    }
    
    public var isNaN: Bool {
        tid == ""
    }
    
    public init() {
        id = Coderef.newcode(.article)
    }
    
    init(_ taxion:Taxion) {
        tid = taxion.id
      //  label = taxion.nom
    }

    init(_ tid:String, _ label:String) {
        self.tid = tid
        self.label = label
        id = Coderef.newcode(.article)
    }
    
    init(_ json:String) {
        let jsonData = json.data(using: .utf8)!
        let item = try! JSONDecoder().decode(Article.self, from: jsonData)
        self = item
        if item.id == "" {id = Coderef.newcode(.article)}
    }
}

extension Article {
    static func == (_ a:Article,_ b:Article) -> Bool {
        a.tid == b.tid && a.label == b.label
    }
    static func > (_ a:Article,_ b:Article) -> Bool {
        a.tid > b.tid
    }
    
    public static var warning = "aucun article défini"
    
    static var unknown = Article()
    public static var selector = "article"
    
    static var all: [Article] = []
    static func find(_ id:String) -> Article {
        var found = Article()
        for item in all {
            if id == item.id {
                found = item
                break
            }
        }
        return found
    }

}


