//
//  Typicker.swift
//  Putex
//
//  Created by Herve Crespel on 15/11/2025.
//
import SwiftUI

public struct Typicker: View {
    @Binding var type : TypeArticle
    var types:[TypeArticle]
    
    public init(_ type:Binding<TypeArticle>, _ types:[TypeArticle]) {
        _type = type
        self.types = types
    }
    
    public var body:some View {
        ForEach(types) {
            item in
            HStack {
                Text(item.show)
                Button(action: {type = item})
                { Image(systemName: "pencil") }
            }
        }
    }
}
