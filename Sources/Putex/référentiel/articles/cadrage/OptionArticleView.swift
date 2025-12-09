//
//  DetailDetailArticleView.swift
//  Semantex
//
//  Created by Herve Crespel on 19/06/2025.
//

import SwiftUI

struct OptionArticleView: View {
    var cadrage:Cadrage
    @Binding var option:OptionArticle
    @State var config: Config
 //   @State private var edition : Bool
    
    init(_ cadrage:Cadrage, _ option:Binding<OptionArticle>, _ typeconfigurator:Configurator?) {
        self.cadrage = cadrage
        _option = option
  //      edition = option.wrappedValue.isNaN
        if let optionconfig = option.wrappedValue.config {
            config = optionconfig
        } else {
            if let configurator = typeconfigurator {
                config = Config(configurator)
            } else {
                config = Config()
            }
        }
    }
    @State var pick = false
    var body:some View {
        GroupBox("option") {
            HStack {
                Text(option.label)
                Button(action: {pick = true})
                {Image(systemName: "pencil")}
                    .sheet(isPresented: $pick)
                {ItemPicker(cadrage.options, $option, {pick = false})
                    .frame(width:200)}
            }
            if option.label != "" && cadrage.configurable {
                Text("configuration")
                ConfigurationFiller($config)
                    .onChange(of : config, {option.config = config})
            }
        }
    }
}

struct OptionArticlePreview: View {
    @State var detail = OptionArticle("garage")
    
    var body:some View {
        VStack {
        //    OptionArticleView($detail)
           // Text(detail.category.rawValue)
        }
    }
}

#Preview {
    OptionArticlePreview().frame(width:500, height:100)
}
