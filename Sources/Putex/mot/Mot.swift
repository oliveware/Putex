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
}

struct GenrePicker: View {
    @Binding var selected: Genre
    
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
    var genre : Genre
    var singulier:String
    var pluriel:String

    init(_ s:String,_ p:String?, _ g:Genre = .m) {
        singulier = s
        pluriel = p ?? ""
        genre = g
    }
    
    subscript(_ nb:Int = 1) -> String {
        switch nb {
        case -1, 0, 1:  return singulier
        default:        return pluriel
        }
    }
}
