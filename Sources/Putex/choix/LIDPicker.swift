//
//  LIDPicker.swift
//  Putex
//
//  Created by Herve Crespel on 19/11/2024.
//
import SwiftUI

struct LIDPicker : View {
    @Binding var lid : LID
    @State var continent: Continent
    @State var territoire: Territoire
    
    var done: () -> Void
    
    init(_ lid: Binding<LID>, _ done: @escaping () -> Void) {
        _lid = lid
        continent = World.Europe
        territoire = World.Europe["France"]
        self.done = done
    }
    
    var body: some View {

            VStack {
                TerritoireView(lid: $lid, continent:$continent, territoire:$territoire, edition:false)
                Button("valider", action: {
                    done()
                }).padding(10)
            }

    }
}


struct LIDPickerPreview : View {
    @State var lid = LID([])
    
    var body:some View {
        LIDPicker($lid, {})
            .frame(width:600,height:500)
    }
}

#Preview {
    LIDPickerPreview()
}
