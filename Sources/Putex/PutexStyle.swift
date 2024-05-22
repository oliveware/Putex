
//
//  PutexStyle.swift
//  Xware
//
//  Created by Herve Crespel on 17/01/2021.
//

import Foundation
import SwiftUI

var helptext = "texte d'aide"

struct putexStyle: TextFieldStyle {
    @State var help = false
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        
        configuration
        
//        .border(Color.gray, width: /*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
        .popover(isPresented: .constant(help)) {
                Text(helptext).padding(5)
        }
      // .focusable(true, onFocusChange: { _ in self.help=true})
        .opacity(90.0)
        .padding(1)
        .font(Font.system(size: 12, weight: .medium, design: .serif))
        .lineLimit(1)
        .foregroundColor(Color.white)
        
//        .background(
//           RoundedRectangle(cornerRadius: 10, style: .continuous)
//               .stroke(Color.gray, lineWidth: 3)  )
//        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 1))
       
    }
}
