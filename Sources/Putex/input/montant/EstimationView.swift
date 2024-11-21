//
//  EstimationView.swift
//  Semantex
//
//  Created by Herve Crespel on 16/11/2024.
//
import SwiftUI

public struct EstimationView: View {
    @Binding var estimation:Estimation
    var prompt : String
    
    public init(_ estimation:Binding<Estimation>, _ prompt:String = "estimation") {
        _estimation = estimation
        self.prompt = prompt
    }
    
    public var body : some View {
        HStack(spacing:30) {
            JMAPicker($estimation.date,"date",{})
            MontantView($estimation.montant, prompt)
        }
    }
}

var estim = """
{"date":"1/10/24","montant":"45789 €"}
"""
var estimejson = Estimejson("1/10/24","45789 €")

struct EstimationPreview: View {
    @State var estimation = Estimation(estimejson)
    var body : some View {
        EstimationView($estimation)
            .frame(width:600)
    }
}

#Preview {
    VStack {
        EstimationPreview().padding(10)
        
        HStack {
            Text("empty")
            EstimationPreview(estimation:Estimation()).padding(10)
        }
    }
}


