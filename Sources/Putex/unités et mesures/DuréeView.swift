//
//  DuréeView.swift
//  Putex
//
//  Created by Herve Crespel on 23/11/2025.
//
import SwiftUI

struct DuréeView : View {
    @Binding var jours: Nombre

    @State private var one = JMA.now
    @State private var two = JMA.now
    private var start:Bool?
    
    public init(_ jours:Binding<Nombre>,_ start: Bool?) {
        _jours = jours
        self.start = start
    }
    var prompt:String {
        if let start = start {  // une date
            return start ? "arrivée" : "départ"
        } else {    // deux dates
            return "arrivée"
        }
    }
    
    var body : some View {
        HStack {
            JMAPicker($one, prompt, {})
                .onChange(of: one, {
                    if let start = start {  // une date
                        if start  {
                            jours = Nombre(1+one.monthlast.nbj(since: one))
                        } else {
                            jours = Nombre(1+one.nbj(since: one.monthfirst))
                        }
                    } else {
                        jours = Nombre(1+two.nbj(since: one))
                    }
                })
            if start == nil {
                JMAPicker($two, "départ", {})
                    .onChange(of: two, {
                        jours = Nombre(1+two.nbj(since: one))
                    })
            }
        }
    }
    
    
}

struct DuréePreview : View {
    @State var jours = Nombre()
    var start: Bool?
    
    var body: some View {
        VStack {
            DuréeView($jours, start)
            Text ("\(jours.enlettres) jours")
        }
    }
}

#Preview() {
    VStack(alignment: .leading, spacing: 40) {
        
        HStack{
            Text( "fin de mois").frame(width:100, alignment: .leading)
            DuréePreview(start:true)
           
        }
        HStack {
            Text( "début de mois").frame(width:100, alignment: .leading)
            DuréePreview(start:false)
        }
        HStack {
            Text( "entre deux dates").frame(width:100, alignment: .leading)
            DuréePreview()
        }
    }
}


