//
//  ButtonStackPicker.swift
//  Putex
//
//  Created by Herve Crespel on 06/02/2026.
//

import SwiftUI

public struct ButtonStackPicker : View {
    @Binding var label:String
    var labels:[[String]]
    
    @State private var bc = (row:0, col:0)
    @State private var pick = false
    
    public init(_ label:Binding<String>, _ labels:[[String]]) {
        _label = label
        self.labels = labels
    }
    
    public var body: some View {
        HStack {
            Text(label)
            Button(action:{pick = true})
            {Image(systemName: "pencil")}
                .sheet(isPresented: $pick)
            {ButtonStack($bc, $label, labels, done:{pick = false}).padding()}
        }
    }
}
