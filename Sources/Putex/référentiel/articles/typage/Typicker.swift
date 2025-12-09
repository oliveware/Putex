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
    @State var pick : Bool
    @State var selected : TypeArticle
    
    public init(_ tid:Binding<String>,_ type:TypeArticle, _ types:[TypeArticle]) {
        _tid = tid
        selected = type
        self.types = types
        pick = tid.wrappedValue == ""
    }
    
    public var body:some View {
        if types.count > 0 {
            HStack {
                if tid == "" {
                    Text("choisir un type")
                } else {
                    Text(selected.cartouche)
                }
                Button(action: {pick = true})
                { Image(systemName: "pencil") }
                    .sheet(isPresented:$pick)
                    { ScrollView {
                        ForEach(types) {
                            type in
                            HStack {
                                Text(type.line)
                                Button(action: {
                                    selected = type
                                    tid = type.id
                                    pick = false
                                })
                                { Image(systemName: "arrow.down") }
                            }
                        }
                     }.padding()
                }
            }
        } 
    }
}
