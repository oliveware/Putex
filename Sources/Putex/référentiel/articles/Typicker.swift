//
//  Typicker.swift
//  Putex
//
//  Created by Herve Crespel on 15/11/2025.
//
import SwiftUI

public struct Typicker: View {
    @Binding var tid : String
    var types:[TypeArticle]
    
    public init(_ tid:Binding<String>, _ types:[TypeArticle]) {
        _tid = tid
        self.types = types
    }
    
    public var body:some View {
        if types.count > 0 {
            ForEach(types) {
                type in
                HStack {
                    Text(type.show)
                    Button(action: {tid = type.id})
                    { Image(systemName: "pencil") }
                }
            }
        } else {
            Text("aucun type défini")
        }
    }
}
