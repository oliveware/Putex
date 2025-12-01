//
//  DetailDetailArticleView.swift
//  Semantex
//
//  Created by Herve Crespel on 19/06/2025.
//

import SwiftUI

struct OptionArticleView: View {
    @Binding var option:OptionArticle
    var refname: String
    @State private var edition : Bool
    
    init(_ ref:String, _ option:Binding<OptionArticle>) {
        _option = option
        refname = ref
        edition = option.wrappedValue.isNaN
    }
    var body:some View {
        HStack(alignment:.top) {
            EnumPicker(OptionArticle.natures, $option.nature)
                .onChange( of:option.nature, {option.id = ""})
                .frame(width:200)
            if let nature = option.nature {
                switch nature {
                case .logement:
                    if let logements = Coderef.all[refname] {
                        CodePicker(logements, $option.id)
                    } else {
                        Text("aucun logement")
                    }
                case .garage:
                    if let garages = Coderef.all["garages"] {
                        CodePicker(garages, $option.id)
                    }  else {
                        Text("aucun garage")
                    }
                }
            }
        }
    }
}

struct OptionArticlePreview: View {
    @State var detail = OptionArticle(.garage)
    
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
