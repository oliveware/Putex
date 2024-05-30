//
//  Iteration.swift
//  versions
//
//  Created by Herve Crespel on 21/05/2021.
//

import SwiftUI

struct Iteration: View {
    
    @State var palier : Int = 7
    @State var vague : Int = 2
    @State var iter : Int = 3
    
    var body: some View {
        HStack {
             Text("P")
             Text(String(palier))
             Text("D")
             Text(String(vague))
             Text("I")
             Text(String(iter))
        }
        .frame(width: 130, height: 30, alignment: .center)
    }
}

struct Iteration_Previews: PreviewProvider {
    static var previews: some View {
        Iteration()
    }
}
