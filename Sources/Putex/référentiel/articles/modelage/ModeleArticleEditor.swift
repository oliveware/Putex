//
//  ModeleArticleEditor.swift
//  Putex
//
//  Created by Herve Crespel on 13/11/2025.
//

import SwiftUI
import Taxionomy

struct ModeleArticleEditor : View {
    var type : TypeArticle
    @Binding var modele:ModeleArticle
    
    var done: () -> Void
    @State var pageon = false
    
    public init(_ type:TypeArticle,_ modele:Binding<ModeleArticle>, _ done: @escaping () -> Void) {
        self.type = type
        _modele = modele
        self.done = done
    }
   
    var body: some View {
        VStack(alignment:.leading) {
            TextField("description", text:$modele.description)
            TextField("marque", text:$modele.marque)
            
            // illustration/
            HStack{
                OptionUrl("illustration", $modele.imagurl)
                if let image = modele.imagurl, let url = URL(string: image) {
                    WebPicture(url)
                        .frame(width:200, height:200)
                } else {
                    if let image = type.imagurl, let url = URL(string: image) {
                        WebPicture(url)
                            .frame(width:200, height:200)
                    }
                }
            }.frame(alignment:.leading)
            
            HStack {
                OptionUrl("page web", $modele.url)
                if let webpage = modele.url, let url = URL(string: webpage) {
                    Button(action:{ pageon = true })
                    {Image(systemName: "arrow.down")}
                        .sheet(isPresented: $pageon){
                            WebView(url: url).frame(width:600,height:800)
                        }
                } else {
                    if let webpage = type.url, let url = URL(string: webpage) {
                        Button(action:{ pageon = true })
                        {Text("voir celle du type")}
                      //  {Image(systemName: "arrow.down")}
                            .sheet(isPresented: $pageon){
                                WebView(url: url).frame(width:600,height:800)
                            }
                    }
                }
            }
        }.padding()
    }
}

struct ModelePreditor : View {
    var type = TypeArticle()
    @State var modele = ModeleArticle()
    func done() {}
    
    var body : some View {
        ModeleArticleEditor(type, $modele, done)
    }
}

#Preview { ModelePreditor().frame(width: 500, height:500) }
