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
    var source = false
    @State var edition :Bool
    
    public init(_ estimation:Binding<Estimation>, _ prompt:String = "estimation", _ source:Bool = false) {
        _estimation = estimation
        self.prompt = prompt
        if let _ :Binding<String> = Binding(estimation.source) {
            self.source =  true
        }  else {
            self.source = source
        }
        edition = !estimation.wrappedValue.checked
    }
    
    public var body : some View {
        GroupBox(prompt) {
            if edition {
                HStack {
                    Form{
                        HStack {
                            JMAPicker($estimation.date,"",{})
                            MontantView($estimation.montant, "")
                        }
                        if source {
                            if let source : Binding<String> = Binding($estimation.source) {
                                TextField("source", text:source)
                            } else {
                                Button(action:{estimation.source = ""})
                                {Text("ajouter une source")}
                            }
                        }
                        
                    }
                    Button(action:{
                        edition = false
                        estimation.check()
                    })
                    {Image(systemName: "checkmark")}
                }
            } else {
                HStack {
                    Text(estimation.entexte)
                    Button(action:{
                        edition = true
                    })
                    {Image(systemName: "pencil")}
                }
            }
        }
    }
}

var estim = """
    {"date":"1/10/24","montant":"45789 €","source":"donation"}
"""
var estimejson = Estimejson("1/10/24","45789 €","donation")

struct EstimationPreview: View {
    @State var estimation = Estimation(estimejson)
    var source = false
    var body : some View {
        EstimationView($estimation, "essai", source)
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

#Preview("source") {
    EstimationPreview(estimation:Estimation(),source:true).padding(10)

}


