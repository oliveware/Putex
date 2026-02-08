//
//  Cache.swift
//  Putex
//
//  Created by Herve Crespel on 19/12/2025.
//

import Foundation

import Taxionomy
import Fichiers

public var cache = Cache()

public struct Cache: Codable {
    var endpoint = "http://192.168.1.41"
    var dir = "/dodata/"
    //var filextension = Filextension.taxion
    
    public func get(_ nom:String) -> Taxionomy {
        if let taxions : Taxionomy = Fichier(dir, nom, .taxion).get(endpoint) {
             return taxions
         } else {
             print ("erreur fichier taxionomie \(nom) ")
             return Taxionomy()
         }
    }
    
    public func get(_ nom:String) -> Articleref {
        if let ref : Articleref = Fichier(dir, nom, .articleref).get(endpoint) {
             return ref
         } else {
             print ("erreur fichier articleref \(nom) ")
             return Articleref()
         }
    }
    
    func get(_ nom:String) -> Territoire {
        if let country : Territoire = Fichier(dir, nom, .country).get(endpoint) {
             return country
         } else {
             print ("erreur fichier territoire \(nom) ")
             return Territoire()
         }
    }
    
    func get(_ nom:String) -> World {
        if let world : World = Fichier(dir, nom, .world).get(endpoint) {
             return world
         } else {
             print ("erreur fichier world \(nom) ")
             return World()
         }
    }
    

}
