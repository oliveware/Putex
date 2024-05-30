//
//  Vague.swift
//  versions
//
//  Created by Herve Crespel on 21/05/2021.
//

import SwiftUI

struct Vague: View {

    @State var palier : Int = 0
    @State var vague : Int = 1
    @State private var iter : Int = 1
   
    var body: some View {
       
        HStack {
            if iter > 0 {
                Iteration(palier:palier,vague:vague,iter:1)
            }
            if iter > 1 {
                Iteration(palier:palier,vague:vague,iter:2)
            }
            if iter > 2 {
                Iteration(palier:palier,vague:vague,iter:3)
            }
            if iter > 3 {
                Iteration(palier:palier,vague:vague,iter:4)
            }
            if iter < 4 {
            Button(action: {newiter()}) {
                      Text("Itération")
                   }
            }
        }
        .frame(width: 520, height: 50, alignment: .center)

        }

    func newiter() {
        iter += 1
    }
}

struct Vague_Previews: PreviewProvider {
    static var previews: some View {
        Vague()
    }
}
