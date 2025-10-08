//
//  ZeroPicker.swift
//  Putex
//
//  Created by Herve Crespel on 30/09/2025.
//



import SwiftUI

struct ZeroPicker: View {
    var taxonomy:Taxonomy = Taxonomy(besoins)
    @Binding var tid:TID
    @Binding var zero   : Nivzero
    @Binding var one    : Nivone
    
    init(_ tid:Binding<TID>, _ zero: Binding<Nivzero>, _ one: Binding<Nivone>) {
        _tid = tid
        _zero = zero
        _one = one
    }
    
    var barre:some View {
        HStack {
            if zero.nom != "" {
                Button(action:{
                    zero = Nivzero()
                    one = Nivone()
                })
                {Text(zero.nom)}

            }
            Spacer()
        }
    }

    var body:some View {
        VStack(alignment:.leading) {
            barre
            Spacer()
            if zero.nom == "" {
                HStack (alignment:.top){
                    ScrollView {
                        VStack(alignment:.leading) {
                            ForEach(0..<taxonomy.items.count, id:\.self) { index in
                                //   if edition {
                                Button(action:{
                                    zero = taxonomy.items[index]
                                    tid = TID([zero.id])
                                })
                                {Text(taxonomy.items[index].nom).frame(width:150, alignment: .center)}
                                // }
                            }
                        }
                    }
                    //  .frame(height:CGFloat(zero.one.count * (edition ? 20 : 10)))
                    
                    Text("Choisir une catégorie")
                        .padding(.leading, 20)
                        .padding(.top,CGFloat(taxonomy.items.count * 9))
                    Spacer()
                }
            } else {
                OnePicker( $tid, $zero, $one)
            }
        }
        
    }
}

struct ZeroPickerPreview : View {
    var taxonomy = Taxonomy(besoins)
    @State var zero = Nivzero()
    @State var tid = TID()
    @State var one = Nivone()
    
    var edition = true
    
    var body:some View {
        ZeroPicker($tid, $zero, $one)
            .frame(width:600,height:300)
        Text(tid.id)
    }
}

#Preview {
    ZeroPickerPreview().padding()
}
/*
#Preview ("non éditable") {
    ZeroPickerPreview(edition:false).padding()
}
*/
