//
//  SwiftUIView.swift
//  
//
//  Created by Herve Crespel on 15/01/2024.
//

import SwiftUI

public struct JMAPicker : View {
    var vprompt: String = "Replanifier la date"
    var hprompt = ""
    @Binding var jma:JMA
    @State private var edition: Bool = false
    var sheet = false
    var vertical = false
    @State private var date : Date
    var todo: () -> Void
    
    public init(_ date:Binding<JMA>,_ p:String = "", _ todo: @escaping () -> Void, _ sheet:Bool = false, _ vertical: Bool = false) {
        _jma = date
        self.date = date.wrappedValue.asDate
        if vertical {
            vprompt = p
            hprompt = ""
        } else {
            vprompt = ""
            hprompt = p
        }
        self.sheet = sheet
        self.todo = todo
    }
    
    var edit: some View {
        
        DatePicker("", selection: $date, displayedComponents: .date)
           // .frame(width: 200)
            .onChange(of:date) {
                jma = JMA(date)
                todo()
            }
    }
    
    public var body : some View {
        VStack(alignment:.leading,spacing:5)
            {
                if vprompt != "" {
                    Text( vprompt).font(.caption)
                }
                if edition && !sheet {
                    edit
                } else {
                    HStack {
                        if hprompt != "" {
                            Text( hprompt + " :").font(.title3)
                        }
                    if sheet {
                        Button("\(jma.entexte)", action:{edition = true})
                            .sheet(isPresented: $edition){edit}
                    } else{
                        edit
                    }
                }
            }
        }
    }
    
 /*   func planifier() {
        edition = false
        jma = JMA(date)
    }*/
}

struct JMAPreview : View {
    @State var date: JMA = JMA(Date.now)
    var sheet :Bool
    var vertical = true
    
    var body : some View {

        VStack(spacing:20) {
            JMAPicker($date, "arrivée", {}, sheet, vertical)
                .frame(width:200, height: 100)
            Text(date.entexte)
        }
    }
}

#Preview("horizontal") {
    JMAPreview(sheet:false, vertical: false)
}
#Preview("vertical") {
    JMAPreview(sheet:false, vertical: true)
}
#Preview("sheet") {
    JMAPreview(sheet:true)
}
