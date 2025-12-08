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
    
    init(_ cadrage:Cadrage, _ option:Binding<OptionArticle>, _ configurator:Configurator) {
        self.cadrage = cadrage
        _option = option
  //      edition = option.wrappedValue.isNaN
        if let config = option.wrappedValue.config {
            self.config = config
        } else {
            self.config = Config(configurator)
        }
    }
    var body:some View {
        GroupBox("option") {
            ItemPicker(cadrage.options, $option, {})
                .frame(width:200)
            if cadrage.configurable {
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
