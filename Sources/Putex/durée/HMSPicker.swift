//
//  HMSPicker.swift
//  Putex
//
//  Created by Herve Crespel on 14/03/2026.
//

import SwiftUI

struct HMSPicker : View {
    @Binding var hms:HMS
    @State var edition : Bool
    var todo: () -> Void
    
    init(_ hms:Binding<HMS>,_ todo: @escaping () -> Void) {
        _hms = hms
        edition = hms.wrappedValue == HMS.NaN
        self.todo = todo
    }
    
    var body: some View {
        HStack {
            if edition {
                Form {
                    TextField("heure", value:$hms.h, format:.number)
                    TextField("minute", value:$hms.mn, format:.number)
                    TextField("seconde", value:$hms.s, format:.number)
                }.frame(width:100)
                Button(action:{edition = false})
                {Image(systemName: "checkmark")}
            } else {
                
                Text(hms.astring)
                Button(action:{edition = true})
                {Image(systemName: "pencil")}
            }
        }
    }
}

struct HMSPrepicker : View {
    @State var hms = HMS.NaN
    var body: some View {
        HMSPicker($hms, {})
    }
}

#Preview {
    HMSPrepicker()
}
