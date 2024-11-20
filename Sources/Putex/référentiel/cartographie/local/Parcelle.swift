//
//  Parcelle.swift
//  Semantex
//
//  Created by Herve Crespel on 01/11/2024.
//

struct Parcelle: Codable, Identifiable {
    
    var id:Int
    
    init(_ num:Int) {
        id = num
    }
    
    var surface = Mesure(.aire)
    
    var show:String {
        var aire = "\t (surface non mesurée)"
        if surface.nombre.entiere != nil {
            aire =  " (" + surface.astring + ")"
        }
        return "n° " + String(id) + aire
    }
}

import SwiftUI
    
struct ParcelleEditor: View {
    @Binding var parcelle: Parcelle
    
    var body: some View {
        HStack{
            TextField("numéro", value : $parcelle.id, format: .number)
                .frame(width:150)
            NumberView($parcelle.surface)
        }
    }
}

struct ParceList: View {
    @Binding var parcelles: [Parcelle]
    @State var parcelle = Parcelle(0)
    @State var ajoût = false
    
    var body: some View {
        Form {
            ForEach ($parcelles) {
                parcelle in
                HStack(spacing:20) {
                    Button(action:{delete(parcelle.id)})
                    {Image(systemName: "minus")}
                    ParcelleEditor(parcelle: parcelle)
                }
            }
            HStack {
            if ajoût {
                    Button(action:{
                        parcelles.append(parcelle)
                        ajoût = false
                        parcelle = Parcelle(0)
                    })
                    {Text("ajouter")}.disabled(parcelle.id < 1)
                    ParcelleEditor(parcelle: $parcelle)
                
            } else {
                Button(action:{
                    ajoût = true
                })
                {Text("ajouter une parcelle")}
            }
            }.padding(.top,20)
        }
    }
    
    func delete(_ id:Int){
        var liste : [Parcelle] = []
        for parcelle in parcelles {
            if parcelle.id != id {
                liste.append(parcelle)
            }
        }
        parcelles = liste
    }
}

struct ParcellePreview: View {
    @State var parcelle = Parcelle(999)
    var body:some View {
        ParcelleEditor(parcelle:$parcelle)
    }
}

struct ParceListPreview: View {
    @State var parcelles : [Parcelle] = [Parcelle(999)]
    var body:some View {
        ParceList(parcelles:$parcelles).frame(width:400,height:150)
    }
}



#Preview ("liste") {
    ParceListPreview()
}

#Preview {
    ParcellePreview()
}
