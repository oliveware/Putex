//
//  TypeArticleEditor.swift
//  Putex
//
//  Created by Herve Crespel on 09/11/2025.
//

import SwiftUI
import Taxionomy

public struct TypeArticleEditor : View {
    var taxionomy : Taxionomy
    @State var taxion : Taxion
    @Binding var type: TypeArticle
    @State var soustype : Bool
    
    public init(_ type:Binding<TypeArticle>, _ taxionomie:Taxionomy) {
        _type = type
        taxionomy = taxionomie
        taxion = taxionomie.find(type.id)
        soustype = type.wrappedValue.soustyperef != nil
    }
    
    public var body : some View {
        VStack {
            TaxionPicker($taxion, taxionomy, {
                type.change(taxion)
            })
            if !type.isNaN {
                HStack {
                    VStack (alignment:.leading) {
                        TextField("description", text:$type.show)
                        if soustype {
                            Picker("", selection:$type.soustyperef) {
                                ForEach(SousTypeRef.all) {
                                    item in
                                    Text(item.rawValue).tag(item)
                                }
                            }
                        } else {
                            Button("ajouter un sous-type", action:{soustype = true})
                        }
                        
                        OptionUrl("une image", $type.imagurl)
                            .padding(.bottom,20)
                    }
                    if let image = type.imagurl, let url = URL(string: image) {
                        WebPicture(url)
                            .frame(width:200, height:200)
                    }
                }
                
                OptionUrl("une page web", $type.url)
                
                if let webpage = type.url, let url = URL(string: webpage) {
                    WebView(url: url)
                }
                
                if let configurateur = type.config {
                    Configurer(Binding<Configurateur>(
                        get:{type.config ?? Configurateur()},
                        set:{type.config = $0}
                    ), true)
                } else {
                    Button("ajouter un configurateur", action:{type.config = Configurateur()})
                }
            }
        }.frame(minWidth:600, minHeight: 400)
            .padding()
        
    }
}

// https://www.map24.com/wp-content/uploads/2023/04/Sharwil.jpg
// http://192.168.1.41
// https://apple.com

struct TypePreditor : View {
    var taxionomy = Taxionomy(taxionomie2)
    @State var type = TypeArticle()
    
    var body : some View {
        TypeArticleEditor($type, taxionomy)
    }
}

#Preview { TypePreditor().frame(width: 800, height:500) }
