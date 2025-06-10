//
//  ParcelleView.swift
//  Putex
//
//  Created by Herve Crespel on 21/11/2024.
//

import SwiftUI

struct ParcelleShow: View {
    @Binding var parcelle: Parcelle
    @State var edition: Bool
    
    init(_ parcelle:Binding<Parcelle>) {
        _parcelle = parcelle
        edition = parcelle.wrappedValue.surface.value == 0
    }
    
    var body: some View {
        HStack(spacing:50){
            Text("n° " + String(parcelle.id))
            Spacer()
            if edition {
                NumberView($parcelle.surface)
            } else {
                Text(parcelle.surface.astring)
            }
        }
    }
}
    
struct ParcelleEditor: View {
    @Binding var parcelle: Parcelle
    
    var body: some View {
        HStack{
            Text("numéro ")
            TextField("numéro", value : $parcelle.id, format: .number)
                .frame(width:150)
            Spacer()
            NumberView($parcelle.surface)
        }
    }
}

struct ParcelleView: View {
    @Binding var parcelle: Parcelle
    @Binding private var correction: Bool
    @State private var edition: Bool
    
    init(_ parcelle: Binding<Parcelle>, _ correction:Binding<Bool>) {
        _parcelle = parcelle
        _correction = correction
        edition = parcelle.wrappedValue.id == 0
    }
    
    var body: some View {
        HStack{
            if edition {
                ParcelleEditor(parcelle: $parcelle)
            } else {
                ParcelleShow($parcelle)
            }
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
    
    var surface:Mesure {
        var result = Mesure("0", .aire)
        for parcelle in parcelles {
            if let aire = result + parcelle.surface {
                result = aire
            }
        }
        return result
    }
    
    var body: some View {
        
        VStack {
            Text("surface totale : " + surface.astring).padding(10)
            ForEach ($parcelles) {
                parcelle in
                HStack(spacing:10) {
                    if edition {
                        Button(action:{delete(parcelle.id)})
                        {Image(systemName: "minus")}
                        Spacer()
                    }
                    ParcelleView(parcelle, $edition)
                }
            }
            
            if edition {
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
            }
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
    @State var correction = false
    var body:some View {
        ParcelleView($parcelle, $correction)
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
    ParcellePreview().padding(20)
}
