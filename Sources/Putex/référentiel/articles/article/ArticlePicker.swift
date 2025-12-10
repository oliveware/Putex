//
//  ArticlePicker.swift
//  Semantex
//
//  Created by Herve Crespel on 19/11/2025.
//
import SwiftUI


public struct ArticlePicker : View {
    var items: [Article]
    @Binding var selected : Article
    @State var pick : Bool
    
    public init(_ items:[Article], _ article:Binding<Article>) {
        self.items = items
        _selected = article
        pick = article.wrappedValue.isNaN
    }

    public var body: some View {
        if items.count == 0 {
            Text("aucun article")
        } else {
            HStack {
                Text(selected.show)
                Spacer()
                Button(action: {pick = true})
                {Image(systemName: "pencil")}
                .sheet(isPresented: $pick) {
                    ScrollView {
                        ForEach(items){
                            item in
                            HStack(spacing:30) {
                                Text(item.show)
                                Spacer()
                                Button(action:{
                                    selected = item
                                    pick = false
                                })
                                {Image(systemName: "list.triangle")}
                            }
                        }.padding(10)
                    }
                }
            }
        }
    }
}


