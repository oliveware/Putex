//
//  DatheurePicker.swift
//  Putex
//
//  Created by Herve Crespel on 14/03/2026.
//

import SwiftUI

public struct DatheurePicker : View {
    @Binding var datheure : Datheure
    @State var date:JMA
    @State var heure:HMS
    var prompt = ""
    
    public init(_ datheure:Binding<Datheure>, _ prompt:String = "") {
        _datheure = datheure
        date = datheure.wrappedValue.date
        heure = datheure.wrappedValue.heure
        self.prompt = prompt
    }
    
    public var body: some View {
        HStack {
            JMAPicker($date, prompt, update)
            HMSPicker($heure, update)
        }
    }
    
    func update() {
        datheure = Datheure(date, heure)
    }
}


struct DatheurePrepicker : View {
    @State var datheure = Datheure.now
    
    var body: some View {
        DatheurePicker($datheure)
    }
}

#Preview {
    DatheurePrepicker()
}
