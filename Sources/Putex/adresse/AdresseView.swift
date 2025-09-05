//
//  AdresseView.swift
//  Putex
//
//  Created by Herve Crespel on 21/11/2024.
//
import SwiftUI

struct AdresseView : View {
    @Binding var numvoie: NumVoie
    @State private var edit = false
    var commune:String = ""
    
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

struct AdresseDouble : View {
    @Binding var numvoie: [NumVoie]
    var commune:String = ""
    //@State var firstedit = false
    //@State var autreedit = false
    
    var body: some View {
        VStack(alignment:.trailing, spacing:20 ){
            if numvoie.count > 0 {
                GroupBox("adresse") {
                    AdresseView(numvoie:$numvoie[0], commune:commune)
                }
                if numvoie.count > 1 {
                    HStack (spacing:20){
                        Button( action:{
                            let first = numvoie[0]
                            numvoie = [first]
                            }
                        )
                        {Image(systemName: "minus")}
                        GroupBox("autre adresse") {
                            AdresseView(numvoie:$numvoie[1], commune:commune)
                        }
                    }
                } else {
                    Button("autre adresse") {
                        numvoie.append(NumVoie())
                    }.padding(20)
                }
            }
        }.padding(10)
    }
}
    public struct AdressePreview: View {
        @State var numvoie = [NumVoie(), NumVoie()]
        
        public var body :some View {
            AdresseDouble(numvoie:$numvoie)
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
