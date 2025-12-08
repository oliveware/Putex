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
    
    public init(_ type:Binding<TypeArticle>, _ taxionomie:Taxionomy) {
        _type = type
        taxionomy = taxionomie
        taxion = taxionomie.find(type.id)
        soustypage = type.wrappedValue.soustype != nil
    }
    
    public var body : some View {
        VStack {
            HStack {
                TaxionPicker($taxion, taxionomy, {
                    type.change(taxion)
                })
                
                if !type.isNaN {
                    Spacer()
                    if soustypage {
                        /* Picker("", selection:$type.soustype) {
                         ForEach(SousType.all) {
                         item in
                         Text(item.rawValue).tag(item)
                         }
                         }*/
                    } else {
                        Button("sous-type", action:{soustypage = true})
                    }
                    if type.configurator == nil {
                        Button("configurateur", action:{
                            type.configurator = Configurator()
                        })
                    }
                    if type.cadrage == nil {
                        Button("options", action:{
                            type.cadrage = Cadrage()
                        })
                    }
                }
            }
            
            if !type.isNaN {
                TextField("description", text:$type.label).padding()
                ScrollView {
                    HStack {
                        OptionUrl("image", $type.imagurl)
                        if let image = type.imagurl, let url = URL(string: image) {
                            WebPicture(url)
                                .frame(width:200, height:200)
                        }
                    }
                    if let configurator = type.configurator {
                        HStack {
                            Button(action:{ type.configurator = nil })
                            {Image(systemName: "delete.right")}
                            ConfiguratorMaker(Binding<Configurator>(
                                get:{configurator},
                                set:{type.configurator = $0}
                            ))
                        }
                    }
                    
                    if let cadrage = type.cadrage {
                        HStack {
                            Button(action:{ type.cadrage = nil })
                            {Image(systemName: "delete.right")}
                            CadrageView(
                                Binding<Cadrage>(
                                    get:{cadrage},
                                    set:{type.cadrage = $0}
                                ),
                                Binding<Configurator>(
                                    get:{type.configurator ?? Configurator()},
                                    set:{type.configurator = $0}
                                )
                            )
                        }
                    }
                }//.frame(width:800, height:800).padding()
                    OptionUrl("page web", $type.url)
                    if let webpage = type.url, let url = URL(string: webpage) {
                        WebView(url: url)
                    }
               
            }
        }
        
    }
}

// https://www.map24.com/wp-content/uploads/2023/04/Sharwil.jpg
// https://www.jurassicfruit.com/products/avocado-pinkerton
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
