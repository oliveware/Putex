//
//  OptionalEdit.swift
//  Putex
//
//  Created by Herve Crespel on 27/09/2024.
//
import SwiftUI

public struct OptionalView: View {
    @Binding var string:String?
    
    private var buttontext:String
    private var fieldname: String
    @State private var edition:Bool

    private var vertical:Bool
    private var large:CGFloat
    
    public init(_ prompt:String, _ optional:Binding<String?>, _ vertical:Bool = false, _ large:CGFloat = 80 ) {
        buttontext = "ajouter \(prompt)"
        fieldname = prompt
        _string = optional
        if let input = optional.wrappedValue {
            edition = input == ""
        } else { edition = false}
        let plarge = buttontext.count
        self.vertical = vertical
        self.large = large + 8*CGFloat(plarge > 8 ? plarge : 8)
    }
    
    public init(_ mot:Mot, _ optional:Binding<String?>, _ vertical:Bool = false, _ large:CGFloat = 80 ) {
        buttontext = "ajouter \(mot.indéterminé)"
        fieldname = mot.singulier
        _string = optional
        if let input = optional.wrappedValue {
            edition = input == ""
        } else { edition = false}
        let plarge = buttontext.count
        self.vertical = vertical
        self.large = large + 8*CGFloat(plarge > 8 ? plarge : 8)
    }
    
    public var body: some View {
        HStack (alignment:.bottom) {
            if let stringBinding: Binding<String> = Binding($string) {
                if edition {
                    if vertical {
                        VStack (alignment:.leading) {
                            Text(fieldname).font(.caption)
                            TextField("" ,text:stringBinding)
                        }
                    } else {
                        Text(fieldname)
                        TextField("" ,text:stringBinding)
                    }
                    Button(action:{ edition = false }) {Image(systemName: "checkmark")}
                        .disabled(stringBinding.wrappedValue == "")
                } else {
                    if vertical {
                        VStack (alignment:.leading) {
                            Text(fieldname).font(.caption)
                            Text(stringBinding.wrappedValue)
                        }
                    } else {
                        Text(fieldname + " : " + stringBinding.wrappedValue)
                    }
                    Button(action:{ edition = true }) {Image(systemName: "pencil")}
                }
            } else {
                Button(buttontext) { string = ""
                edition = true}
            }
        }.frame(minWidth:large, alignment:.leading)
    }
}




struct OptionalPreview: View {
    @State var taux: String?
    private var prompt:String?
    private var mot: Mot?
    
    init(_ prompt:String) {
        self.prompt = prompt
    }
    init(_ mot:Mot) {
        self.mot = mot
    }
    
    var body:some View {
        if prompt != nil {
            OptionalView(prompt!, $taux, true)
        }
        if mot != nil {
            OptionalView(mot!, $taux)
        }
    }
}

#Preview {
    VStack {
        OptionalPreview("commission").padding(10)
        OptionalPreview(Mot("commission","commissions",.f)).padding(10)
    }.padding(10)
}
