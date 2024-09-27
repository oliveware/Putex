//
//  OptionalEdit.swift
//  Putex
//
//  Created by Herve Crespel on 27/09/2024.
//
import SwiftUI

public struct OptionalEdit: View {
    var prompt:String
    @Binding var string:String?
    var large:CGFloat
    
    public init(_ p:String, _ optional:Binding<String?>, _ large:CGFloat = 80 ) {
        prompt = p
        _string = optional
        let plarge = p.count
        self.large = large + 8*CGFloat(plarge > 8 ? plarge : 8)
    }
    
    public var body: some View {
        HStack {
            Text(prompt)
            if let stringBinding: Binding<String> = Binding($string) {
                TextField("" ,text:stringBinding)
              //  Button("retirer") { string = nil }
                
            } else {
                Button("ajouter") { string = "" }
            }
        }.frame(minWidth:large)
    }
}


struct OptionalPreview: View {
    @State var taux: String?
    
    var body:some View {
        OptionalEdit("commission", $taux)
    }
}

#Preview("edit") {
    OptionalPreview()
}
