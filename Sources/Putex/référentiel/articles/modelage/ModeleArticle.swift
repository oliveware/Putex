//
//  ModeleArticle.swift
//  Putex
//
//  Created by Herve Crespel on 09/11/2025.
//
import Taxionomy

// un modèle d'article permet de distinguer des articles de même type
// exemple de l'automobile
public struct ModeleArticle: Codable {

    var description: String = ""
    var marque: String = ""
    
    public var imagurl: String?
    public var url: String?
    
    public init() {}
    
    public var show: String {
        var string = description
        if marque != "" {
            string = string + "\nmarque : \(marque)"
        }

        return string
    }

    var illustré : Bool {
        imagurl != nil || url != nil
    }
    public var isNaN: Bool {
        description == "" && marque == "" && !illustré
    }
    
}
