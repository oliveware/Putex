//
//  ModeleArticleView.swift
//  Putex
//
//  Created by Herve Crespel on 13/11/2025.
//
/*
import SwiftUI
import Taxionomy

struct ModeleArticleView: View {
    var contenants:Taxionomy
    var fermetures:Taxionomy
    @Binding var modele: ModeleArticle
    @State var contenant : Taxion
    @State var fermeture : Taxion
    @State var edition: Bool

    
    public init(_ modele:Binding<ModeleArticle>, _ contenants:Taxionomy, _ fermetures:Taxionomy) {
        _modele = modele
        self.contenants = contenants
        self.fermetures = fermetures
        if modele.wrappedValue.contenant != nil {
            contenant = contenants.find(modele.wrappedValue.contenant!)
            fermeture = fermetures.find(modele.wrappedValue.fermeture!)
        }
        edition = modele.wrappedValue.isNaN
    }
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text("Modèle d'article")
                    .font(.title)
                    
                Spacer()
                Button(action:{edition.toggle()})
                {Image(systemName: edition ? "checkmark" : "pencil")}
            }.padding()
            HStack {
                if edition {
                    ModeleArticleEditor($modele, {})
                } else {
                    Text(modele.show)
                }
                if let image = modele.imagurl, let url = URL(string: image) {
                    WebPicture(url)
                        .frame(width:200, height:200)
                }
            }
            if let webpage = modele.url, let url = URL(string: webpage) {
                WebView(url: url)
                //Text("site web : \(url)")
            }
        }
    }
}
// https://www.map24.com/wp-content/uploads/2023/04/Sharwil.jpg
// http://192.168.1.41
// https://apple.com

struct ModelePreview : View {
    var taxionomy = Taxionomy(taxionomie2)
    @State var modele = ModeleArticle()
    func done() {}
    
    var body : some View {
        ModeleArticleView($modele, taxionomy)
            .frame(width:600, height:600)
    }
}

#Preview {
    ModelePreview()
}
*/
