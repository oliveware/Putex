//
//  FixedField.swift
//  Putex
//
//  Created by Herve Crespel on 14/03/2026.
//

import SwiftUI

public struct FixedField : View {
    @Binding var string: String
    var prompt = ""
    var length = 0
    var entier : Bool
    var max : Bool
    
    public init( _ p:String, _ input:Binding<String>, _ l:Int,
                _ entier: Bool, _ max: Bool ) {
        _string = input
        prompt = p
        length = l
        self.entier = entier
        self.max = max
    }
    
    public var body: some View {
        TextField(prompt, text: $string)
            .onChange(of: string)
                { // Truncate text if it exceeds maxLength
                    if string.count > length {
                        string = String(string.prefix(length))
                    }
                    if entier && Int(string) == nil {
                        let nbc = string.count
                        if nbc > 0 {
                            string = String(string.prefix(nbc-1))
                        }
                    }
                }
                .foregroundColor(string.count == length ? .green : (max ? .pink : .white))
    }
}

struct FixedFieldPreview : View {
    @State var string = ""
    
    var body: some View {
        FixedField("prompt", $string,  5, true, false)
            .frame(width:200)
            .padding()
    }
}

#Preview {
    FixedFieldPreview()
}
