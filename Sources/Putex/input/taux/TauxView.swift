//
//  TauxView.swift
//  Semantex
//
//  Created by Herve Crespel on 23/09/2024.
//
import SwiftUI


struct TauxView : View {
    @Binding var taux:Taux
    @State var edition = true
    var prompt: String? = "pourcentage"

    var width : CGFloat {
        let w = prompt == nil ? 0 : CGFloat(prompt!.count)
        return 150 + w * 8
    }
    
    init(_ taux:Binding<Taux>, _ prompt:String? = nil) {
        _taux = taux
        self.prompt = prompt
    }
    
    var body: some View {
        NumberView($taux.value, .decimal(2), "%", prompt )
            .frame(minWidth:width)
            .padding(7)
    }
}


struct TauxPreview: View {
    @State var taux = Taux()
    var prompt: String?
    
    init(_ prompt:String? = nil) {
        self.prompt = prompt
    }
    
    var body:some View {
        TauxView($taux, prompt)
    }
}

#Preview("edit") {
    VStack {
        TauxPreview("taux d'intérêt")
        TauxPreview("commission")
        TauxPreview()
    }
}
