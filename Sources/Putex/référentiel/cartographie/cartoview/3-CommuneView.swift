//
//  CommuneView.swift
//  Putex
//
//  Created by Herve Crespel on 09/11/2024.
//
import SwiftUI

struct CommuneView : View {
    @Binding var commune : Commune
    @State var edition : Bool
    
    init(_ commune:Binding<Commune>) {
        _commune = commune
        edition = commune.wrappedValue.nom == ""
    }
    
    var body: some View {
        HStack {
                Text(commune.nom).frame(width:200, alignment:.leading)

                Spacer()
                Button(action: { edition = true})
                {Image(systemName: "pencil")}
                .sheet(isPresented: $edition) {
                    CommuneEditor(commune: $commune)
            }
        }
    }
}

struct CommuneEditor: View {
    @Binding var commune: Commune
    var body: some View {
        HStack(spacing:20) {
            VStack(alignment:.leading) {
                TextField("nom", text:$commune.nom).frame(width:150)
                
                Button("ajouter un quartier", action:{commune.quartiers.append(Quartier())})
                OptionalView("tutelle", $commune.tutelle)
            }
            if commune.quartiers.count > 0 {
                GroupBox("quartiers") {
                    ScrollView{
                        ForEach($commune.quartiers) {
                            item in
                            QuartierView(item)
                        }.frame(alignment:.leading)
                    }
                }
            }
        }
    }
}



struct CommunePreview : View {
    @State var commune = Commune()
    
    var body:some View {
        CommuneEditor(commune: $commune)
            .frame(width:900, height:200)
    }
}

#Preview ("editor"){
    CommunePreview().padding()
}

