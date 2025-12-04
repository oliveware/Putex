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
    @State var soustypage : Bool
    @State var cadrage: Bool
    
    public init(_ type:Binding<TypeArticle>, _ taxionomie:Taxionomy) {
        _type = type
        taxionomy = taxionomie
        taxion = taxionomie.find(type.id)
        soustypage = type.wrappedValue.soustype != nil
        cadrage = type.wrappedValue.cadrage != nil
    }
    
    public var body : some View {
        VStack {
            TaxionPicker($taxion, taxionomy, {
                type.change(taxion)
            })
            if !type.isNaN {
                HStack {
                    VStack (alignment:.leading) {
                        TextField("description", text:$type.label)
                        if soustypage {
                            /* Picker("", selection:$type.soustype) {
                             ForEach(SousType.all) {
                             item in
                             Text(item.rawValue).tag(item)
                             }
                             }*/
                        }
                    }
                    
                    OptionUrl("une image", $type.imagurl)
                        .padding(.bottom,20)
                    
                    if let image = type.imagurl, let url = URL(string: image) {
                        WebPicture(url)
                            .frame(width:200, height:200)
                    }
                }
                
                OptionUrl("une page web", $type.url)
                
                if let webpage = type.url, let url = URL(string: webpage) {
                    WebView(url: url)
                }
                
                if let configurator = type.configurator {
                    ConfiguratorMaker(Binding<Configurator>(
                        get:{type.configurator ?? Configurator()},
                        set:{type.configurator = $0}
                    ))
                }
                
                if let cadrage = type.cadrage {
                    CadrageView(Binding<Cadrage>(
                        get:{type.cadrage ?? Cadrage()},
                        set:{type.cadrage = $0}
                    ))
                }
            }
            HStack {
                if !soustypage {
                   Button("sous-type", action:{soustypage = true})
               }
                if type.configurator == nil {
                   Button("configurateur", action:{type.configurator = Configurator()})
               }
                if type.cadrage == nil {
                    Button("options", action:{type.cadrage = Cadrage()})
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
