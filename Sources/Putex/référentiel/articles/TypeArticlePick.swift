//
//  TypeArticleView.swift
//  Putex
//
//  Created by Herve Crespel on 12/11/2025.
//

import SwiftUI
import Taxionomy
import WebKit

struct TypeArticlePick: View {
    var taxionomy:Taxionomy
    @Binding var type: TypeArticle
    @State var edition : Bool

    
    public init(_ type:Binding<TypeArticle>, _ taxionomie:Taxionomy) {
        _type = type
        taxionomy = taxionomie
        edition = type.wrappedValue.id == ""
    }
    
    var body: some View {
        HStack {
            Text(type.show) // .font(.title)
            Spacer()
            Button(action:{edition = true})
            {Image(systemName: "pencil")}
                .sheet(isPresented: $edition)
                { TypeArticleEditor($type, taxionomy) }
        }    }
}
// https://www.map24.com/wp-content/uploads/2023/04/Sharwil.jpg
// http://192.168.1.41
// https://apple.com

struct TypePreview : View {
    var taxionomy = Taxionomy(taxionomie2)
    @State var type = TypeArticle()
    func done() {}
    
    var body : some View {
        TypeArticlePick($type, taxionomy)
            .frame(width:600, height:600)
    }
}

#Preview {
    TypePreview()
}
