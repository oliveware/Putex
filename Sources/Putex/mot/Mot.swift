//
//  File.swift
//  
//
//  Created by Herve Crespel on 11/12/2023.
//

import Foundation
import SwiftUI

public enum Genre : String, Codable {
    static var prompt = "genre"
    static var all : [Genre] = [.n,.f,.m]
    static let nbc = 3
    static var width : CGFloat = 100
    public var id: Self {self}
    
    case f = "féminin"
    case m = "masculin"
    case n = "neutre"
    
    var indéterminé:String {
        self == .f ? "une" : "un"
    }
    var déterminé:String {
        self == .f ? "la" : "le"
    }
}

struct GenrePicker: View {
    @Binding var selected: Genre?
    
    var body:some View {
        Picker("", selection: $selected) {
            ForEach ( 0..<Genre.nbc, id:\.self) {
                i in
                let item = Genre.all[i]
                Text(item.rawValue).tag(item)
            }
        }
        .frame(width: Genre.width, height: 25, alignment: .leading)
    }
}

public struct Mot : Codable {
    public static var inconnu = Mot("inconnu", "inconnus", .m)
    var genre : Genre?
    var singulier:String
    var pluriel:String

    public init(_ s:String,_ p:String?, _ g:Genre = .m) {
        singulier = s
        pluriel = p ?? ""
        genre = g
    }
    
    public var selector : String { singulier }
    public var tablename: String { pluriel }
    
    public var indéterminé: String {
        (genre ?? .m).indéterminé + " " + singulier
    }
    public var indéterminés: String {
        "des " + pluriel
    }
    public var déterminé: String {
        (genre ?? .m).déterminé + " " + singulier
    }
    public var déterminés: String {
        "les " + pluriel
    }
    
    public func quantifié(_ nombre: Int) -> String {
        nombre > 1 ? pluriel : singulier
    }
    
    public subscript(_ nb:Int = 1) -> String {
        switch nb {
        case -1, 0, 1:  return String(nb) + " " + singulier
        default:        return String(nb) + " " + pluriel
        }
    }
}
