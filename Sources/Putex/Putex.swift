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
            Text("Putex")
                .font(.title3)
            
            MotView($data.mot).frame(width:400)
                
            NomPropre($data.nompropre, "compositeur", "aide" )
             
            Line(input:$data.ligne)
               

            HStack(spacing:30){
                NumberView($data.naturel , data.naturel.isnul, .naturel, "m3")
                NumberView($data.relatif , data.relatif.isnul, .relatif)
                NumberView($data.decimal , data.decimal.isnul, .decimal(2), "€")
            }
            .padding(5)
            .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray, lineWidth: 1))
            
        
       
            Vignette(picture: Picture("https://wallpapercave.com/wp/wp2555019.jpg"))
        }
    }
    }
#Preview {
    Putex()
}
