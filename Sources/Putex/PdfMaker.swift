//
//  PdfMaker.swift
//  Putex
//
//
//  Created by Herve Crespel on 23/02/2023.
//

import SwiftUI

    @MainActor
public struct PdfMaker: View {
        var rendus : [AnyView]
        var indice : Int = 1
        var root:String
        var white = true
        @Binding var catalog : Catalog
    
    public init(_ catalog:Binding<Catalog>, _ rendus:[AnyView], _ indice:Int, _ root:String, _ white:Bool = true) {
        self.rendus = rendus
        self.indice = indice
        self.root = root
        self.white = white
        _catalog = catalog
    }

        public var body: some View {
            VStack {
                ScrollView {
                    VStack(spacing:10) {
                        ForEach(0..<rendus.count, id:\.self) {
                            index in
                            rendus[index] }
                    }
                }
                if catalog.published(indice) {
                    HStack(spacing:20) {
                        Text("déjà publié")
                        Button("re-publier"){save()}.padding(30)
                    }
                } else {
                    Button("publier"){save()}.padding(30)
                }
              //  ShareLink("Export PDF", item: render())
            }
        }

        func save() {
            render(catalog.saveDialog(root, indice))
            catalog.publish(indice)
        }
        
        func render(_ dialog:NSSavePanel) {
            dialog.allowedContentTypes = [.pdf]
            dialog.begin { (result) -> Void in
                if result == .OK {
                    if let url = dialog.url {
                        let nbpages = rendus.count
                        var box = CGRect(x: 0, y: 0, width: 630, height: 891)
                        guard let pdf = CGContext(url as CFURL, mediaBox: &box, nil) else {
                            return
                        }
                        for index in 0..<nbpages {
                            pdf.beginPDFPage(nil)
                            let rendu = white ? AnyView(rendus[index].background(Color.white)) : rendus[index]
                            let renderer = ImageRenderer(content: rendu)
                            renderer.render { size, context in
                                pdf.translateBy(
                                    x: box.size.width / 2 - size.width / 2,
                                    y: box.size.height / 2 - size.height / 2
                                )
                                context(pdf)
                            }
                            pdf.endPDFPage()
                        }
                        pdf.closePDF()
                        print("PDF saved to: \(url)")
                    }
                } else {
                    Erreur("abandon save catalog to: \(dialog.url)", "PdfMaker", "render").warn()
                }
            }
        }
        

}

/*struct PdfMaker_Previews: PreviewProvider {
    static var previews: some View {
        PdfMaker(rendus:[AnyView(
                QuittanceView(
                        quittance: Quittance(
                        seclin.appartements[0].location, 1, 2023,seclin.appartements[0].location.site.intro.items[1].items[1].paiement[0],
                        JMA(3,1,22))
                    )
                )],
                    catalog:.constant(Catalog(site: "appolo", initials:"UP", kind:.quit, folder: "2022"))
                                               )
    }
}*/
