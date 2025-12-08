//
//  ArticleList.swift
//  Semantex
//
//  Created by Herve Crespel on 23/01/2025.
//

import SwiftUI

public struct ArticleList : View {
    var ref:Articleref
    @Binding var items: [Article]
    @State var article = Article()
    @State var modif = false
    
    public init(_ items:Binding<[Article]>, _ ref:Articleref) {
        _items = items
        self.ref = ref
    }
    
    public var ajout: some View {
        Button(action:{
            article = Article()
            items.append(article)
        })
        {Text("ajouter un article")}
    }
    
    public var body: some View {
       
            VStack(alignment: .center) {
                if items.count == 0 {
                    ajout
                } else {
                GroupBox("Articles disponibles") {
                    ScrollView {
                        ForEach($items){
                            item in
                            HStack(spacing:30) {
                                if modif {
                                    ConfirmedButton("minus", "cet article  (\(item.id))", {delete(item.id)
                                        modif = false})
                                }
                                ArticleView(item, ref)
                            }
                        }
                    }
                }
            
                HStack {
                    if items.count > 0 {
                        Button(action:{modif.toggle()})
                        {Image(systemName: "minus")}
                    }
                    Spacer()
                    ajout
                    Spacer()
                }
            }
        }.padding(10)
    }
    func delete(_ id: String) {
        var new : [Article] = []
        for item in items {
            if item.id != id {
                new.append(item)
            }
        }
        items = new
    }
}


struct ArticleListPreview: View {
    @State var items: [Article]
    private var refarticle : Articleref
    
    init(_ articleref:String) {
        let ref = ArticlerefDocument(articleref).ref
        refarticle = ref
        items = ref.articles
    }
    
    var body: some View {
        ArticleList($items, refarticle)
    }
}
#Preview {
    ArticleListPreview(articlerefjson).frame(width:600, height:400)
}
