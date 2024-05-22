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
            
            MotView($data.mot)
                
            NomPropre($data.nompropre, "compositeur", "aide" )
             
            Line(input:$data.ligne)
               

        
        Nombrex()
            .frame(alignment: .center)
            .padding(5)
            .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray, lineWidth: 1))
            
        
       
            Choice(["un","deux","trois","quatre"],"choix")
        }
    }
    }
#Preview {
    Putex()
}
