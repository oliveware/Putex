//
//  AdresseView.swift
//  Putex
//
//  Created by Herve Crespel on 21/11/2024.
//
import SwiftUI

struct AdresseView: View {
    @Binding var first: NumVoie
    @Binding var autre: NumVoie?
    var commune:String
    @State var firstedit = false
    @State var autreedit = false
    
    var body: some View {
        HStack(spacing:20){
            GroupBox("adresse") {
                HStack (spacing:20){
                    Text(first.adresse + "  " + commune)
                    
                    Button(action:{firstedit = true})
                    {Image(systemName: "pencil")}
                        .sheet(isPresented: $firstedit, content: {NumVoieEditor($first)})
                }.padding(20)
            }
            if autre == nil {
                Button("autre adresse") {
                    autre = NumVoie()
                    autreedit = true
                }.padding(20)
            } else {
                GroupBox("autre adresse") {
                    HStack (spacing:20){
                        Button(action:{autre = nil})
                        {Image(systemName: "trash")}
                        Text(autre!.adresse + "  " + commune)
                        if let optional : Binding<NumVoie> = Binding($autre) {
                            Button(action:{autreedit = true})
                            {Image(systemName: "pencil")}
                                .sheet(isPresented: $autreedit, content: {NumVoieEditor(optional)})
                        }
                    }.padding(20)
                }
            }
        }.padding(10)
    }
    
  /*  var editor: some View {
        HStack {
            NumVoieEditor(numvoie: $first)
            if let optional : Binding<NumVoie> = Binding($autre) {
                NumVoieEditor(numvoie: optional)
            }
            GroupBox ("adresse"){
                NumVoieEditor(numvoie: $first)
            }.padding(.bottom, 20)
            if let optional: Binding<NumVoie> = Binding($autre) {
                GroupBox ("autre adresse"){
                    NumVoieEditor(numvoie: optional)
                }
            } else {
                Button("autre adresse") { autre = NumVoie() }
            }
        }
    }
    
    var body: some View {
        if edition {
            editor
        } else {
            show
        }
    }*/
}

/*struct NumVoieEdit: View {
    @Binding var numvoie:NumVoie?
    
    var body:some View {
        if let optional: Binding<NumVoie> = Binding($numvoie) {
            VStack {
                TextField("voie ", text:optional.voie)
                HStack {
                    TextField("numéro", text:optional.num)
                        .frame(width:100)
                    
                    TextField("code postal", text:optional.codepostal)
                }
            }.frame(alignment: .leading)
        } else {
            Button("autre adresse") { numvoie = NumVoie() }
        }
    }
}*/
