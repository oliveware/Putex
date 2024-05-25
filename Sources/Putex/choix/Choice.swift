//
//  Choice.swift
//  Xware
//
//  Created by Herve Crespel on 18/01/2021.
//

import SwiftUI

public struct Choice: View {
    var prompt = ""
    var width: CGFloat = 120
    var height: CGFloat = 25
    
    var choix = ["un","deux","trois","quatre"]
    @State var selected = 0
    
    public init(_ choix:[String], _ prompt:String = "") {
        self.choix = choix
        self.prompt = prompt
    }
    
    public init(prompt:String = "", width:CGFloat,  choix:[String]) {
        self.choix = choix
        self.prompt = prompt
        self.width = width
    }
    
    public init() { }
    
    public var body: some View {
       
        VStack {
            if prompt != "" {
                Text(prompt).font(.caption)
            }
            Picker(selection: $selected, label: Text("")) {
                ForEach (0 ..< choix.count, id:\.self){
                    Text(self.choix[$0]).tag($0)
                }
            }
            .frame(width: width, height: 25, alignment: .leading)
        }
            
    }
}

struct Choice_Previews: PreviewProvider {
    static var previews: some View {
        Choice(["un","deux","trois","quatre"],"choix")
    }
}
