//
//  ButtonRow.swift
//  Putex
//
//  Created by Herve Crespel on 13/06/2026.
//
import SwiftUI
import Taxionomy

struct ButtonRow: View {
    @Binding var bc:(row:Int, col:Int)
    @Binding var label:String
    var cols: [String] = []
    //private var newcol = -2
    var row:Int
    var width: Int = 200
    
    var spacing = 10
    var colwidth: CGFloat {
        CGFloat(Double(width - (spacing+15)*(cols.count-1)) / Double(cols.count))
    }
    var done: () -> Void
    
    func selected(_ col:Int) -> Bool {
        row == bc.row && col == bc.col
    }
    
    var body: some View {
        HStack (spacing:CGFloat(spacing)) {
            ForEach (0..<cols.count, id:\.self) {
                col in
                Button(action:{
                    bc = (row:row, col:col)
                    label = cols[col]
                    done()
                })
                {Text(cols[col]).frame(width:colwidth)
                    .foregroundColor(selected(col) ? .yellow : .gray)}
            }
        }
    }
}
