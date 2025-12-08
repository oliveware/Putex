//
//  CadrageView.swift
//  Putex
//
//  Created by Herve Crespel on 01/12/2025.
//

import SwiftUI

struct CadrageView : View {
    @Binding var cadrage: Cadrage

    @State private var nom: String = ""
    @State var delete = false
    @State var ajout = false
    @FocusState private var focused : Bool
    
    init(_ cadrage:Binding<Cadrage>) {
        _cadrage = cadrage
    }
    
    var body: some View {
        GroupBox("Options possibles") {
            VStack {
                if !cadrage.isNaN {
                    Form {
                        ForEach($cadrage.options) {
                            option in
                            HStack {
                                if delete {
                                    Button(action:{
                                        cadrage.delete (option.wrappedValue)
                                        delete = false
                                    })
                                    {Image(systemName: "trash")}
                                } else {
                                    Text("     ")
                                }
                                Spacer()
                                Text(option.wrappedValue.label)
                                Spacer()
                            }.frame(minWidth: 100)
                        }
                    }.padding(2)
                }
                if ajout {
                    HStack {
                        TextField("", text:$nom).focused($focused)
                        Button(action:{
                            cadrage.add(nom)
                            nom = ""
                            ajout = false
                        })
                        {Image(systemName: "checkmark")}
                            .disabled(nom.count < 5)
                    }
                } else {
                    HStack {
                        if !cadrage.isNaN {
                            Button(action:{ delete.toggle() })
                            {Image(systemName: "minus")}
                        }
                        Spacer()
                        Button("ajouter une option", action:{
                            ajout = true
                            focused = true
                        })
                        Spacer()
                    }
                }
            }
        }
    }
}

struct CadragePreview : View {
    @State var cadrage = Cadrage()
    
    var body: some View {
        CadrageView($cadrage).frame(height: 300)
    }
}
#Preview {
    CadragePreview()
}
