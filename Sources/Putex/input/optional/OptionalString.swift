//
//  OptionalString.swift
//  Putex
//
//  Created by Herve Crespel on 25/05/2025.
//
import SwiftUI

public struct OptionalString: View {
    @Binding var string:String?
    
    private var buttontext:String
    private var fieldname: String

    private var vertical:Bool
    private var large:CGFloat
    
    public init(_ prompt:String, _ optional:Binding<String?>, _ vertical:Bool = false, _ large:CGFloat = 80 ) {
        buttontext = "ajouter \(prompt)"
        fieldname = prompt
        _string = optional

        let plarge = buttontext.count
        self.vertical = vertical
        self.large = large + 8*CGFloat(plarge > 8 ? plarge : 8)
    }
    
    public init(_ mot:Mot, _ optional:Binding<String?>, _ vertical:Bool = false, _ large:CGFloat = 80 ) {
        buttontext = "ajouter \(mot.indéterminé)"
        fieldname = mot.singulier
        _string = optional

        let plarge = buttontext.count
        self.vertical = vertical
        self.large = large + 8*CGFloat(plarge > 8 ? plarge : 8)
    }
    
    public var body: some View {
        HStack(alignment:.bottom) {
            if string == nil {
                Button(buttontext) { string = "" }
            } else {
                
                if vertical {
                    VStack(alignment:.leading) {
                        Text(fieldname).font(.caption)
                        TextField("" , text:Binding<String>(
                            get: { string ?? "" },
                            set: { string = $0 }
                            ))
                    }
                } else {
                    Text(fieldname)
                    TextField("" , text:Binding<String>(
                        get: { string ?? "" },
                        set: { string = $0 }
                        ))
                }
                Button(action:{
                    string = nil
                })
                {Image(systemName: "delete.left")}
            }
        }.frame(minWidth:large)
    }
}

struct OptionalStringPreview: View {
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
            OptionalString(prompt!, $taux, true)
        }
        if mot != nil {
            OptionalString(mot!, $taux)
        }
    }
}

#Preview {
    VStack {
        OptionalStringPreview("commission").padding(10)
        OptionalStringPreview(Mot("commission","commissions",.f)).padding(10)
    }.padding(10)
}
