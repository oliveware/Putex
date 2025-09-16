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
    
    enum Level {
        case commune
        case quartier
        case terrain
    }
    let level : Level
    
    var done: () -> Void
    
    init(_ lid: Binding<LID>, _ done: @escaping () -> Void, _ level:Level = .terrain) {
        _lid = lid
        continent = World.Europe
        territoire = World.Europe["France"]
        self.done = done
        self.level = level
    }
    
    var body: some View {
        TerritoirePicker(lid: $lid, continent:$continent, territoire:$territoire, edition:false)
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
