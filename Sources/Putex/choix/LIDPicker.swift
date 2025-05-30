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
    
    var body: some View {
        Button(action: {})
        {Text(Lieu(lid).adresse(""))}
            .sheet(isPresented: $edit, content: {
                ContinentView(lid: $lid)
            })
    }
}


struct LIDPickerPreview : View {
    @State var lid = LID([])
    
    var body:some View {
        LIDPicker(lid:$lid)
            .frame(width:600,height:500)
    }
}

#Preview {
    LIDPickerPreview()
}
