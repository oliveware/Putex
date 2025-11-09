// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

public struct Putex: View {
    
    @State var data = Putexdata()
    
    public init() {
        //self.data = data
    }
    
    public var body: some View {
        Form {
            VStack {
                Text("Putex")
                    .font(.title3)
                
                HStack {
                    Text("Mot").font(.title)
                        .frame(width:150)
                    MotView($data.mot).frame(width:400)
                        .padding(10).border(.gray).cornerRadius(3)
                }.frame(width:600, alignment:.leading)
                    .padding(10)
                HStack {
                    Text("NomPropre").font(.title)
                        .frame(width:150)
                    NomPropre($data.nompropre, "compositeur", "aide" )
                        .frame(width:400)
                        .padding(10).border(.gray).cornerRadius(3)
                }.frame(width:600, alignment:.leading)
                    .padding(10)
                HStack {
                    Text("Line").font(.title)
                        .frame(width:150)
                Line(input:$data.ligne)
                        .frame(width:400)
                        .padding(10).border(.gray).cornerRadius(3)
            }.frame(width:600, alignment:.leading)
                .padding(10)
                
                
                /*HStack(spacing:30){
                 NumberView($data.naturel , data.naturel.isnul, .naturel, "m3")
                 NumberView($data.relatif , data.relatif.isnul, .relatif)
                 NumberView($data.euro , data.euro.isnul, .decimal(2), "€")
                 NumberView($data.cours , data.cours.isnul, .decimal(4), "€")
                 }*/
                HStack {
                    Text("Nombre").font(.title)
                        .frame(width:150)
                Nombrex(Nombre())
                    .padding(5)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth: 1))
                
                }.frame(width:600, alignment:.leading)
                    .padding(10)
                HStack {
                    Text("Link").font(.title)
                        .frame(width:150)
                    Link("inawani",destination: URL(filePath: "http://192.168.1.41/generic/pages/chapo.html?inawani&fr")!)
                        //.environment(\.openURL, OpenURLAction { url in
                         //      print("Open \(url)")
                         //      return .handled
                          // })
                }.frame(width:600, alignment:.leading)
                    .padding(10)
                
                Vignette(picture: Picture("https://wallpapercave.com/wp/wp2555019.jpg"))
            }
        }
    }
}

#Preview {
    Putex()
}
