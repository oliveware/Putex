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
    
    var conditionnement: Conditionnement?
    var config: Config?
    var option: Cadrage.Option?
    
    var configuration: Config? {
        if let option = option {
            return option.config
        } else {
            return config
        }
    }
    
    var configurator: Configurator {
        if let config = configuration {
            return Configurator(config)
        } else {
            return Configurator()
        }
    }
    
    public init() {}
    
    public var show: String {
        var string = description
        if marque != "" {
            string = string + "\nmarque : \(marque)"
        }
        if conditionné {
            string = string + "\n" + conditionnement!.show
        }

        return string
    }
    var conditionné : Bool {
        conditionnement != nil
    }
    var illustré : Bool {
        imagurl != nil || url != nil
    }
    public var isNaN: Bool {
        description == "" && marque == "" && !illustré && !conditionné
    }
    
}
