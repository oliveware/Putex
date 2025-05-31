//
//  ParcelleView.swift
//  Putex
//
//  Created by Herve Crespel on 21/11/2024.
//

import SwiftUI

struct ParcelleShow: View {
    @Binding var parcelle: Parcelle
    var body: some View {
        HStack(spacing:50){
            Text("n° " + String(parcelle.id))
            NumberView($parcelle.surface)
        }
    }
}
    
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

struct ParcelleView: View {
    @Binding var parcelle: Parcelle
    @State private var edition: Bool
    
    init(_ parcelle: Binding<Parcelle>) {
        _parcelle = parcelle
        edition = parcelle.wrappedValue.id == 0
    }
    
    var body: some View {
        HStack{
            if edition {
                HStack {
                    TextField("numéro", value : $parcelle.id, format: .number)
                        .frame(width:120)
                    
                    Button(action:{edition = false})
                    {Image(systemName: "checkmark")}
                }
            } else {
                HStack {
                    Text("n° " + String(parcelle.id))
                    Button(action:{edition = true})
                    {Image(systemName: "pencil")}
                }
            }
            Spacer()
            NumberView($parcelle.surface)
        }
    }
}

struct ParceList: View {
    @Binding var parcelles: [Parcelle]
    @State var num:Int?
    @State var ajoût = false
    @State var edition = false
    
    var ajoutable:Bool {
        (num == nil ? true : num! > 0)
    }
    
   
    
    var body: some View {
        
        VStack {
                ForEach ($parcelles) {
                    parcelle in
                    HStack(spacing:20) {
                        Button(action:{delete(parcelle.id)})
                        {Image(systemName: "minus")}
                        Spacer()
                        ParcelleView(parcelle)
                    }
                }
                
            
            HStack {
                if ajoût {
                    if num != nil {
                        if num! > 0 {
                        Button(action:{
                            parcelles.append(Parcelle(num!))
                            ajoût = false
                            num = nil
                        })
                        {Image(systemName: "plus")}
                    }}
                    Spacer()
                    TextField("numéro",value: $num, format:.number)
                        .frame(width:120)
                    Spacer()
                } else {
                    Button(action:{
                        ajoût = true
                    })
                    {Text("ajouter une parcelle")}
                }
            }.padding(.top,20)
            }.frame(maxHeight:.infinity)
        
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
    ParceListPreview().padding(20)
}

#Preview {
    ParcellePreview()
}
