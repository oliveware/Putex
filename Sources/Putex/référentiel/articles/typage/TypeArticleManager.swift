//
//  TypeArticleManager.swift
//  Putex
//
//  Created by Herve Crespel on 14/11/2025.
//

import SwiftUI
import Taxionomy

public struct TypeArticleManager : View {
    @Binding var types : [TypeArticle]
    @State var type = TypeArticle()
    @State var modif = false
    var besoins : Taxionomy = cache.get("besoins")
    
    public init(_ items:Binding<[TypeArticle]>) {
        _types = items
        //self.besoins = besoins
    }
    
    public var ajout: some View {
        Button(action:{
            type = TypeArticle()
            types.append(type)
        })
        {Text("ajouter un type d'article")}
    }
    
    
    public var body: some View {
        VStack(alignment: .center) {
            if types.count == 0 {
                ajout
            } else {
            GroupBox("Types d'articles disponibles") {
                ScrollView {
                    ForEach($types){
                        item in
                        HStack(spacing:30) {
                            if modif {
                                ConfirmedButton("minus", "ce type d'article  (\(item.id))", {delete(item.id)
                                    modif = false})
                            }
                            TypeArticlePick(item, besoins)
                        }
                    }
                }
            }
        
            HStack {
                if types.count > 0 {
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
    var new : [TypeArticle] = []
    for item in types {
        if item.id != id {
            new.append(item)
        }
    }
    types = new
}
}



struct TypeArticleListPreview: View {
    ///var besoins = Taxionomy(taxionomie2)
    @State var items: [TypeArticle] = []
    var body: some View {
        TypeArticleManager($items)
    }
}
#Preview {
    TypeArticleListPreview().frame(width:600, height:400)
}

