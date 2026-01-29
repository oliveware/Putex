//
//  NumVoieView.swift
//  Putex
//
//  Created by Herve Crespel on 21/11/2024.
//
import SwiftUI

struct NumVoieView : View {
    @Binding var numvoie: NumVoie
    @State private var edit = false
    var commune:String = "commune"
    
    var body: some View {
        HStack (spacing:20){
            if edit {
                NumVoieEditor($numvoie)
                Button(action:{edit = false})
                {Image(systemName: "checkmark")}
            } else {
                Text(numvoie.adresse + "  " + commune)
                Button(action:{edit = true})
                {Image(systemName: "pencil")}
            }
        }.padding(20)
    }
}

struct NumVoieDouble : View {
    @Binding var first: NumVoie
    @Binding var autre: NumVoie?
    var commune:String = ""
    @State var firstedit = false
    @State var autreedit = false
    
    var body: some View {
        HStack(spacing:20 ){
            GroupBox("adresse") {
                NumVoieView(numvoie:$first, commune:commune)
            }
            if !first.isNaN {
                if autre == nil {
                    Button("autre adresse") {
                        autre = NumVoie()
                        autreedit = true
                    }.padding(20)
                } else {
                    HStack (spacing:20){
                        Button(action:{autre = nil})
                        {Image(systemName: "minus")}
                        GroupBox("autre adresse") {
                            NumVoieView(numvoie:Binding<NumVoie>(
                                get: {autre ?? NumVoie()},
                                set: { autre = $0 } ),
                                        commune:commune)
                        }
                    }
                }
            }
        }.padding(10)
    }
}
    public struct AdressePreview: View {
        @State var first = NumVoie("67", "rue du 14 juillet","59113")
        @State var autre : NumVoie?
        
        public var body :some View {
            NumVoieDouble(first:$first, autre:$autre)
        }
    }

    #Preview {
        AdressePreview().frame(width:600)
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
