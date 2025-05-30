//
//  LIDPicker.swift
//  Putex
//
//  Created by Herve Crespel on 19/11/2024.
//
import SwiftUI

struct LIDPicker : View {
    @Binding var lid : LID
    @State var edit = false
    
    var done: () -> Void
    
    init(_ lid: Binding<LID>, _ done: @escaping () -> Void) {
        _lid = lid
        self.done = done
    }
    
    var body: some View {
        if edit {
            VStack {
                ContinentView(lid: $lid)
                Button("valider", action: {
                    edit = false
                    done()
                }).padding(10)
            }
        } else {
            
            HStack {
                Text(Lieu(lid).adresse(""))
                Button(action: {edit = true})
                {Image(systemName: "pencil")}.padding(20)
            }
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
