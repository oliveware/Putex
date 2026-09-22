//
//  Territoire.swift
//  Putex
//
//  Created by Herve Crespel on 02/11/2024.
//
import SwiftUI
import Fichiers
public struct Territoire : Codable, Identifiable {
    public static var cache = Asyncache<Territoire>()

    public var id:Int
    var lid:LID?
    
    public var nom = ""
    public var pays:String { nom }
    
    var regions:[Region] = []
    public var départements:[String:String]?         // code: nom
    
    init() {
        id = 0
        nom = ""
    }
    
    var isNaN : Bool { id == 0 }
    
    init(_ continent:LID) {
       let territoirelid = LID(continent)
        lid = territoirelid
        id = territoirelid.territoire!
    }
    
    init(_ json:String) {
        let jsonData = json.data(using: .utf8)!
        let pays = try! JSONDecoder().decode(Territoire.self, from: jsonData)
        self = pays
    }
    
    init(_ nom:String, _ endpoint:String) async {
        self = await Territoire.cache.get(nom)
    }

    subscript(_ id:Int) -> Region? {
        var found : Region?
        for region in regions {
            if region.id == id {
                found = region
                break
            }
        }
        return found
    }
    
    mutating func add() {
        regions.append(Region(lid ?? LID()))
    }
}
