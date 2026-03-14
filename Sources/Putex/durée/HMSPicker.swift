//
//  HMSPicker.swift
//  Putex
//
//  Created by Herve Crespel on 14/03/2026.
//

import SwiftUI

struct HMSPicker : View {
    @Binding var hms:HMS
   // let range24 = 0...23
   //let range60 = 0...59
    
    var todo: () -> Void
    
    init(_ hms:Binding<HMS>,_ todo: @escaping () -> Void) {
        _hms = hms
        self.todo = todo
    }
    func bourre(_ val:Int) -> String {
        val < 10 ? "0" + String(val) : String(val)
    }
    func dec24() {
        hms.h -= 1
        if hms.h < 0 { hms.h = 23 }
        todo()
    }
    func inc24() {
        hms.h += 1
        if hms.h > 23 { hms.h = 0 }
        todo()
    }
    func dec60(_ min :Bool = true) {
        if min {
            hms.mn -= 1
            if hms.mn < 0 { hms.mn = 59 }
        } else {
            hms.s -= 1
            if hms.s < 0 { hms.s = 59 }
        }
        todo()
    }
    func inc60(_ min :Bool = true) {
        if min {
            hms.mn += 1
            if hms.mn > 59 { hms.mn = 0 }
        } else {
            hms.s += 1
            if hms.s > 59 { hms.s = 0 }
        }
        todo()
    }
    
    var body: some View {
        HStack{
            Stepper {Text(bourre(hms.h))}
            onIncrement: {inc24()} onDecrement: {dec24()}
            Stepper {Text(bourre(hms.mn))}
            onIncrement: {inc60(true)} onDecrement: {dec60(true)}
            Stepper {Text(bourre(hms.s))}
            onIncrement: {inc60(false)} onDecrement: {dec60(false)}
        }
    }
}

struct HMSPrepicker : View {
    @State var hms = HMS.NaN
    var body: some View {
        HMSPicker($hms, {}).padding()
    }
}

#Preview {
    HMSPrepicker()
}
