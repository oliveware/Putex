//
//  Edition.swift
//  Xware
//
//  Created by Herve Crespel on 17/01/2021.
//

import SwiftUI

struct Edition: View {
    @State private var comment = ""
    @State var specification : Int = 0
    @State var fabrication : Int = 0
    @State var fixed : Int = 0
    @State var engaged = false
    
  public init(s:Int, f:Int, m:Int){
        specification = s
        fabrication = f
        fixed = m
        engaged = ( m > 0)
    }
   
    var body: some View {
       
        HStack {
            VStack {
                if engaged {
                Button(action: {commit()}) {
                    Text("commit")
                }}
                HStack {
                    Button(action: {newspec()}) {
                        Text("S")
                    }.disabled(engaged)
                    Text(String(specification))
                        
                    Button(action: {newfab()}) {
                        Text("F")
                    }.disabled(engaged)
                    Text(String(fabrication))
                    
                    if engaged {
                        Button(action: {fix()}) {
                            Text("fix")
                        }
                        Text(String(fixed))
                    }
                }
            }
            .frame(width: 200, height: 200, alignment: .center)

            Text(comment)
                .frame(width: 200, height: 200, alignment: .center)
        }
        
    }

    func fix() {
        fabrication += 1
        engaged = true
        switch (fixed) {
            case 0 :
                comment = "première correction enregistrée"
            case 1 :
                comment = "deuxième correction enregistrée"
        default :
            comment = String(fixed+1)+"ième correction enregistrée"
        }
        fixed += 1
    }
    func commit() {
        fixed = 0
        engaged = false
        comment = "élément enregistré et référencé"
    }
    func newspec() {
        specification += 1
        fabrication += 1
        fixed = 0
        engaged = true
        comment = "nouvelle structure ou interface enregistrée."
    }
    func newfab() {
        fabrication += 1
        fixed = 0
        engaged = true
        comment = "nouvelle modification enregistrée"
    }
}

struct Edition_Previews: PreviewProvider {
    
    
    static var previews: some View {
        Edition(s:3, f:14, m:2)
    }
}

