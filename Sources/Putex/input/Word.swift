//
//  Word.swift
//  Xware
//
//  Created by Herve Crespel on 18/01/2021.
//

import SwiftUI

public struct NomPropre: View {
    var prompt = "prompt"
    var aide:String = "mot simple ou locution"
    @Binding var input : String
    
    public init(_ input: Binding<String>,_ prompt: String = "",_ help:String = "" ) {
        self.prompt = prompt
        aide = help
        self._input = input
    }
       
    public var body: some View {
        VStack {
           if prompt != "" {
               Text(prompt).font(.caption)
           }
           TextField(aide, text: $input)
               .textFieldStyle(putexStyle())
       }
    }
}

struct NomPropre_Previews: PreviewProvider {
    static var previews: some View {
        NomPropre(.constant(""), "truc")
    }
}
