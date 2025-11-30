//
//  ModeleArticleEditor.swift
//  Putex
//
//  Created by Herve Crespel on 13/11/2025.
//

import SwiftUI
import Taxionomy

struct ModeleArticleEditor : View {

    @Binding var modele:ModeleArticle
    
    var done: () -> Void
    
    public init(_ modele:Binding<ModeleArticle>, _ done: @escaping () -> Void) {
        _modele = modele
        self.done = done
    }
   
    var body: some View {
        VStack(alignment:.leading) {
            TextField("description", text:$modele.description)
            TextField("marque", text:$modele.marque)
                .padding(.bottom,20)
            
            // illustration/
            OptionUrl("image", $modele.imagurl)
                .padding(.bottom,20)
            
            OptionUrl("site web", $modele.url)
                .padding(.bottom,20)
        }
    }
}

struct ModelePreditor : View {
    @State var modele = ModeleArticle()
    func done() {}
    
    var body : some View {
        ModeleArticleEditor($modele,  done)
    }
}

#Preview { ModelePreditor().frame(width: 800, height:500) }
