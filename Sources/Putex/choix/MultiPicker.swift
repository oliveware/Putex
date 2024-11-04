//
//  MultiPicker.swift
//  Putex
//
//  Created by Herve Crespel on 12/10/2024.
//
import SwiftUI

public struct MultiPicker: View {
    @Binding var id:String?
    @State var choice = "choisir"
    @State var open : [Bool]
    var tables:[Coderef]
    let nbt : Int
    
    func show(_ index:Int) -> Bool {
        var result = false
        for i in 0..<nbt {
            if i != index { result = result || open[i]}
        }
        return !result
    }
   
    
    public init( _ tables: [Coderef], _ id:Binding<String?>) {
        var ferme: [Bool] = []
        for _ in tables {
            ferme.append(false)
        }
        self.tables = tables
        open = ferme
        _id = id
        nbt = tables.count
    }
    
    public var body: some View {
        if let _ :Binding<String> = Binding($id)  {
            Button( action: {
                id = nil
            })
            { Text(choice) }
        } else {
            VStack {
                ForEach(0..<nbt) {
                    index in
                    let table = tables[index]
                    if show(index) {
                        CodeChoice($open[index], table, $id, $choice,table.selector)
                    }
                }
            }
        }
    }
}

let courant = Coderef.find("comptes courants")
let epargne = Coderef.find("épargne")
let bourse = Coderef.find("bourse")
let tiers = Coderef.find("tiers")


struct MultiPreview : View {
    @State var id:String?
    var tables : [Coderef] = [banques, banques, tiers, banques]
    
    var body:some View {
        MultiPicker(tables, $id)
    }
}

#Preview {
    MultiPreview().frame(width:200,height:150)
}
