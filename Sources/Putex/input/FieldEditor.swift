//
//  FieldEditor.swift
//  Putex
//
//  Created by Herve Crespel on 16/09/2026.
//
import SwiftUI

public struct FieldEditor: View {
    @Binding var value:Int?
    @Binding var text:String
    var prompt:String
    var nombre:Bool
    
    public init(_ value:Binding<Int?>, _ label:String) {
        _value = value
        _text = .constant("")
        prompt = label
        nombre = true
    }
    
    public init(_ text:Binding<String>, _ label:String) {
        _text = text
        prompt = label
        _value = .constant(nil)
        nombre = false
    }
    public var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(prompt)
                .font(.caption)
                .foregroundStyle(.secondary)
            if nombre {
                TextField( prompt, value: Binding(
                            get: { value },
                            set: { value = $0 }
                           ), format:.number
                ).textFieldStyle(.roundedBorder)
            } else {
                TextField( prompt, text: Binding(
                            get: { text },
                            set: { text = $0 }
                           )
                ).textFieldStyle(.roundedBorder)
            }
        }
    }
}
