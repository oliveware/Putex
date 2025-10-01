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
    @Binding var zero  : Nivzero
    
    @Binding var level :Int

    var body:some View {
       // if zero.id == Nivzero().id {
        HStack {
            ScrollView {
                VStack(alignment:.leading) {
                    ForEach(0..<taxonomy.items.count, id:\.self) { index in
                        //   if edition {
                        Button(action:{
                            zero = taxonomy.items[index]
                            tid = TID([zero.id])
                            level = 1
                        })
                        {Text(taxonomy.items[index].nom).frame(width:150, alignment: .center)}
                        // }
                    }
                }
            }
            //  .frame(height:CGFloat(zero.one.count * (edition ? 20 : 10)))
            Spacer()
        }
        
    }
}

struct ZeroPickerPreview : View {
    var taxonomy = Taxonomy(besoins)
    @State var zero = Nivzero()
    @State var tid = TID()
    @State var level = 0
    
    var edition = true
    
    var body:some View {
        ZeroPicker(taxonomy: taxonomy, tid:$tid, zero:$zero, level:$level)
            .frame(width:600,height:300)
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
