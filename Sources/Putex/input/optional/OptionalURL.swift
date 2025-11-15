//
//  OptionalURL.swift
//  Putex
//
//  Created by Herve Crespel on 13/11/2025.
//
import SwiftUI

struct OptionUrl : View {
    @Binding var url: String?
    @State var string = ""
    
    private var buttontext:String
    private var fieldname: String
    @State private var edition:Bool
    private var large:CGFloat
    
    public init(_ prompt:String, _ optional:Binding<String?>, _ large:CGFloat = 120 ) {
        buttontext = "ajouter \(prompt)"
        fieldname = prompt
        _url = optional
        if let url = optional.wrappedValue {
            string = url
            edition = false
        } else {
            edition = true
        }
        let plarge = buttontext.count
        self.large = large + 8*CGFloat(plarge > 8 ? plarge : 8)
    }
    
    public var body: some View {
        HStack (alignment:.center) {
            if url == nil  {
                Button(buttontext) {
                    url = ""
                    edition = true
                }
            } else {
                if edition {
                    Text(fieldname)
                    TextField("url" , text:$string )
                    Button(action:{
                        url = string
                        edition = false
                    })
                    {Image(systemName: "checkmark")}
                        .disabled(string == "")
                } else {
                    Button(action:{ url = nil })
                    {Image(systemName: "delete.right")}
                    Text(fieldname + " : " + string)
                    Spacer()
                    Button(action:{ edition = true })
                    {Image(systemName: "pencil")}
                    
                }
            }
        }.frame(minWidth:large, alignment:.leading)
    }
}

struct OptionUrlPreview: View {
    @State var url: String?
    private var prompt:String
    
    init(_ prompt:String) {
        self.prompt = prompt
    }
    
    var body:some View {
        VStack {
            OptionUrl(prompt, $url)
            if let imagurl = url {
                WebPrepicture(url:imagurl)
            }
        }
    }
}

#Preview {
    VStack {
        OptionUrlPreview("une image")
            .frame(width:400, height:400)
            .padding(10)
       
    }.padding(10)
}
