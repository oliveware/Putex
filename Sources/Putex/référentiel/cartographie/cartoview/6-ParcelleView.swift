//
//  ParcelleView.swift
//  Putex
//
//  Created by Herve Crespel on 21/11/2024.
//

import SwiftUI

struct ParcelleShow: View {
    @Binding var parcelle: Parcelle
    let unique: Bool
    @State private var edition: Bool
    
    init(_ parcelle:Binding<Parcelle>, _ unique:Bool = false) {
        _parcelle = parcelle
        edition = parcelle.wrappedValue.surface.value == 0
        self.unique = unique
    }
    
    var body: some View {
        HStack(spacing:50){
            if unique {
                Text("parcelle unique n° " + String(parcelle.id))
            } else {
                Text("n° " + String(parcelle.id))
            }
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
    let unique: Bool
    @Binding private var correction: Bool
    @State private var edition: Bool
    
    init(_ parcelle: Binding<Parcelle>, _ correction:Binding<Bool>, _ unique:Bool = false) {
        _parcelle = parcelle
        _correction = correction
        edition = parcelle.wrappedValue.id == 0
        self.unique = unique
    }
    
    var body: some View {
        HStack{
            if edition {
                ParcelleEditor(parcelle: $parcelle)
            } else {
                ParcelleShow($parcelle, unique)
            }
        }
    }
}

struct ParceList: View {
    @Binding var parcelles: [Parcelle]
    @State var num:Int?
    @State var ajoût = false
    @State var edition = false
    @State var suppression = false
    
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
        
        VStack(alignment:.leading) {
            if parcelles.count == 0 {
                Text("parcelle à définir").padding(.leading, 15)
            } else {
                if parcelles.count == 1 {
                    HStack(spacing:10) {
                        if suppression {
                            Button(action:{
                                parcelles = []
                                suppression = false
                                }
                            )
                            {Image(systemName: "minus")}
                            Spacer()
                        }
                        ParcelleView($parcelles[0], $edition, true)
                    }
                } else {
                    GroupBox("\(parcelles.count) parcelles") {
                        if surface.value > 0  && parcelles.count > 1 {
                            HStack {
                                Spacer()
                                Text("surface totale : " + surface.astring)
                            }.padding(10)
                        }
                        ForEach ($parcelles) {
                            parcelle in
                            HStack(spacing:10) {
                                if suppression {
                                    Button(action:{delete(parcelle.id)})
                                    {Image(systemName: "minus")}
                                    Spacer()
                                }
                                ParcelleView(parcelle, $edition)
                            }
                        }
                    }
                }
            }
            
            if edition {
                HStack {
                    if ajoût {
                        Spacer()
                        TextField("numéro",value: $num, format:.number)
                            .frame(width:120)
                        if num != nil {
                            if num! > 0 {
                                Button(action:{
                                    parcelles.append(Parcelle(num!))
                                    ajoût = false
                                    num = nil
                                })
                                {Image(systemName: "checkmark")}
                                    .padding(.leading,20)
                            }
                        }
                        Spacer()
                    } else {
                        HStack {
                            if parcelles.count > 0 {
                                Button(action:{
                                    suppression.toggle()
                                })
                                {Image(systemName:"minus")}
                            }
                            if suppression { Spacer() }
                            Button(action:{
                                ajoût = true
                            })
                            {Text("ajouter une parcelle")}
                            Spacer()
                        }
                    }
                }
            }
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
        suppression = false
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
    @State var parcelles : [Parcelle] = [Parcelle(200),Parcelle(199)]
    var edition = false
    var body:some View {
        ParceList(parcelles:$parcelles, edition:edition).frame(width:400,height:150)
    }
}

#Preview {
    ParcellePreview().padding(20)
}


#Preview ("liste") {
    ParceListPreview().padding(20)
}
#Preview ("liste éditable") {
    ParceListPreview(parcelles:[Parcelle(123),Parcelle(124),Parcelle(125)],edition:true)
        .padding(20)
}

