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
    var done: () -> Void
    @State var pick : Bool
    
    public init(_ type:Binding<TypeArticle>, _ types:[TypeArticle],  _ done:@escaping () -> Void) {
        _type = type
        self.types = types
        self.done = done
        pick = type.wrappedValue.id == ""
    }
    
    public var body:some View {
        if types.count > 0 {
            HStack {
                if type.id == "" {
                    Text("choisir un type")
                } else {
                    Text("type : " + type.line)
                }
                Button(action: {pick = true})
                { Image(systemName: "pencil") }
                    .sheet(isPresented:$pick)
                    { ScrollView {
                        ForEach(types) {
                            type in
                            HStack {
                                Text(type.line)
                                Spacer()
                                Button(action: {
                                    self.type = type
                                    pick = false
                                    done()
                                })
                                { Image(systemName: "arrow.down") }
                            }
                        }
                     }.padding()
                    .frame(width: 400, height: 300)
                }
            }
        } 
    }
}
