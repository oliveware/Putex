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
struct WebPicture: View {
   var url = URL(string: "https://picsum.photos/300")!
    
    init(_ url:URL) { self.url = url }
    
    var body: some View {
            AsyncImage(url: url) { phase in
                switch phase {
                case .empty:
                    ProgressView() // indicateur de chargement
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                case .failure(_):
                    Image(systemName: "exclamationmark.triangle.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.red)
                @unknown default:
                    EmptyView()
                }
            }
            .frame(width: 600, height: 400)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(radius: 5)
    }
}

struct WebPrepicture: View {
    var url:String = "https://picsum.photos/300"
    // let imageURL = URL(string: url)!
    
    var body: some View {
        if let imageURL = URL(string:url) {
            WebPicture(imageURL)
        } else {
            Text ("\(url) n'existe pas")
        }
    }
}

#Preview {
    //Vignette(picture: Picture("http://192.168.1.41/contents/poet/fr/intro/fete/voisin.png"))
    
    VStack {
        WebPrepicture(url:"https://www.map24.com/wp-content/uploads/2023/04/Sharwil.jpg")
        WebPrepicture(url:"http://192.168.1.41/contents/poet/fr/intro/fete/voisin.png")
    }
}
