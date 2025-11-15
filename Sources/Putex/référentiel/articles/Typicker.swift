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
    
    public init(_ tid:Binding<String>, _ types:[TypeArticle]) {
        _tid = tid
        self.types = types
        pick = tid.wrappedValue == ""
    }
    
    public var body:some View {
        if types.count > 0 {
            HStack {
                if tid == "" {
                    Text("choisir un type")
                } else {
                    Text(tid)
                }
                Button(action: {pick = true})
                { Image(systemName: "pencil") }
                    .sheet(isPresented:$pick)
                {ScrollView {
                    ForEach(types) {
                        type in
                        HStack {
                            Text(type.show)
                            Button(action: {tid = type.id})
                            { Image(systemName: "pencil") }
                        }
                    }
                }
                }
            }
        } else {
            Text("aucun type défini")
        }
    }
}
