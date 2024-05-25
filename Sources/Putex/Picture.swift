//
//  File.swift
//  
//
//  Created by Herve Crespel on 19/04/2024.
//

import Foundation

public struct Picture: Codable, Identifiable {
    static var nextid = 0
    static func new() -> String {
        nextid += 1
        return String(nextid)
    }
    public var id : String
    var width : Int = 2000
    var height : Int = 2000
    var url : String
    
    public init(_ url :String) {
        self.url = url
        id = Picture.new()
    }
}

import SwiftUI

public struct Vignette:View {
    var picture : Picture
    public var body: some View {
        // ne fonctionne pas
        // à revoir
        Image(picture.url)
    }
}

#Preview {
    Vignette(picture: Picture("http://192.168.1.41/contents/poet/fr/intro/fete/voisin.png"))
}
