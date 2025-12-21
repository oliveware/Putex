//
//  Cache.swift
//  Putex
//
//  Created by Herve Crespel on 19/12/2025.
//

import Foundation

import Taxionomy
import Fichiers

public struct Cache: Codable {
    //var endpoint = "http://192.168.1.41"
    var dir = "/dodata/"
    //var filextension = Filextension.taxion
    
    func get(_ nom:String, _ endpoint:String) -> Taxionomy {
        if let taxions : Taxionomy = Fichier(dir, nom, .taxion).get(endpoint) {
             return taxions
         } else {
             print ("erreur url ")
             return Taxionomy()
         }
    }
    
    public func get(_ nom:String, _ endpoint:String) -> Articleref {
        if let ref : Articleref = Fichier(dir, nom, .articleref).get(endpoint) {
             return ref
         } else {
             print ("erreur url ")
             return Articleref(endpoint)
         }
    }
}
