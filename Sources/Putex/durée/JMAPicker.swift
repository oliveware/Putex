//
//  SwiftUIView.swift
//  
//
//  Created by Herve Crespel on 15/01/2024.
//

import SwiftUI

public struct JMAPicker : View {
    var vprompt: String = "Replanifier la date"
    var hprompt = "date d'arrivée"
    @Binding var jma:JMA
    @State private var edition: Bool = false
    var sheet = false
    var vertical = false
    @State private var date = Date.now
    
    public init(_ date:Binding<JMA>, _ sheet:Bool = false,_ p:String = "", _ vertical: Bool = false) {
        _jma = date
        if vertical {
            vprompt = p
            hprompt = ""
        } else {
            vprompt = ""
            hprompt = p
        }
        self.sheet = sheet
    }
    
    var edit: some View {
        VStack(spacing:5) {
            DatePicker(hprompt, selection: $date, displayedComponents: .date)
                .frame(width: 200)
            Button("valider",  action:  planifier)
                .padding(.top,10)
        }.padding(30)
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
                        Button("\(jma.entexte)", action:{edition = true})
                    }
                }
            }
        }
    }
    
    func planifier() {
        edition = false
        jma = JMA(date)
    }
}

struct JMAPreview : View {
    @State var date: JMA = JMA(Date.now)
    var sheet :Bool
    var vertical = true
    
    var body : some View {

        JMAPicker($date, sheet, "arrivée", vertical)
                .frame(width:200, height: 100)
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
