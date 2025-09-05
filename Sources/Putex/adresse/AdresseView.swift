//
//  AdresseView.swift
//  Putex
//
//  Created by Herve Crespel on 21/11/2024.
//
import SwiftUI

struct AdresseView : View {
    @Binding var numvoie: NumVoie
    @Binding private var edit: Bool
    var commune:String = ""
    
    init(_ numvoie: Binding<NumVoie>, _ commune:String, _ edit:Binding<Bool>) {
        _numvoie = numvoie
        self.commune = commune
        _edit = edit
    }
    
    var body: some View {
        HStack (spacing:20){
            if edit {
                NumVoieEditor($numvoie)
                if numvoie.isfull {
                    Button(action:{edit = false})
                    {Image(systemName: "checkmark")}
                }
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
    @State var firstedit : Bool
    @State var autreedit : Bool
    
    init(_ numvoie: Binding<[NumVoie]>, _ commune:String) {
        _numvoie = numvoie
        self.commune = commune
        if numvoie.wrappedValue.count > 0 {
            firstedit = numvoie[0].wrappedValue.isNaN
            if numvoie.wrappedValue.count > 1 {
                autreedit = numvoie[1].wrappedValue.isNaN
            } else {
                autreedit = false
            }
        } else {
            firstedit = false
            autreedit = false
        }
    }
    
    var body: some View {
        VStack(alignment:.leading, spacing:20 ){
            if numvoie.count > 0 {
                GroupBox("adresse") {
                    AdresseView($numvoie[0], commune, $firstedit)
                }
                if !numvoie[0].isNaN {
                    if numvoie.count > 1 {
                        HStack (spacing:20){
                            
                            GroupBox("autre adresse") {
                                AdresseView($numvoie[1], commune, $autreedit)
                            }
                            Button( action:{
                                let first = numvoie[0]
                                numvoie = [first]
                            }
                            )
                            {Image(systemName: "minus")}
                        }
                    } else {
                        Button("autre adresse") {
                            numvoie.append(NumVoie())
                            autreedit = true
                        }.disabled(!numvoie[0].isfull)
                        .padding(20)
                    }
                }
            }
        }.padding(10)
    }
}
    public struct AdressePreview: View {
        @State var numvoie = [NumVoie()]
        
        public var body :some View {
            AdresseDouble($numvoie, "commune")
        }
    }

    #Preview {
        AdressePreview().frame(width:600, height:400)
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
