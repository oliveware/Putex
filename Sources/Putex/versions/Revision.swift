//
//  Revision.swift
//  Xware
//
//  Created by Herve Crespel on 17/01/2021.
//

import SwiftUI

struct Revision: View {
    
    @State private var comment = ""
    @State var generation : Int = 0
    @State var release : Int = 0
    @State var correction : Int = 0
   
    var body: some View {
       
        HStack {
            VStack {
                Button(action: {newrev()}) {
                    Text("révision")
                }
                HStack {
                   Button(action: {newgen()}) {
                       Text("génération")
                   }
                   HStack {
                        Text("G")
                        Text(String(generation))
                        Text("R")
                        Text(String(release))
                        Text("C").frame(width: 15, height: 20, alignment: .trailing)
                        Text(String(correction))
                   }
                   Button(action: {newcor()}) {
                      Text("correction")
                   }
                }
                
            }
        .frame(width: 320, height: 200, alignment: .center)

        Text(comment)
            .frame(width: 200, height: 200, alignment: .center)
        }
    }

    func newgen() {
        generation += 1
        release = 0
        correction = 0
        comment = "nouvelle génération définie"
    }
    func newrev() {
        release += 1
        correction = 0
        comment = "nouvelle révision définie"
    }
    func newcor() {
        correction += 1
        comment = "nouvelle correction engagée"
    }
}

struct Revision_Previews: PreviewProvider {
    static var previews: some View {
        Revision()
    }
}
