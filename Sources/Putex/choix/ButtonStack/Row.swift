//
//  ButtonRow.swift
//  Putex
//
//  Created by Herve Crespel on 13/06/2026.
//
import SwiftUI
import Taxionomy


struct Row<T:Stackable>: View {
    @Binding var selected:(row:Int, col:Int)
    var cols: [T]
    
    @Binding var width: Int
    var done: () -> Void
    
    var spacing = 10
    var colwidth: CGFloat {
        CGFloat(Double(width - (spacing+15)*(cols.count-1)) / Double(cols.count))
    }
    
    private var rownum : Int
    func mark(_ col:Int) -> Color {
        selected.row == rownum && selected.col == col ? .yellow : .white
    }
        
    
    init(_ bc:Binding<(row:Int, col:Int)>, _ cols: [T],_ width:Binding<Int>,_ rownum:Int, _ done: @escaping () -> Void) {
        _selected = bc
        self.cols = cols
        self.done = done
        _width = width
        self.rownum = rownum
    }
    
    var body: some View {
        HStack {
            ForEach (0..<cols.count, id:\.self) { col in
                Button(action:{
                    selected.col = col
                    done()
                })
                {Text(cols[col].label).frame(width:colwidth)
                 .foregroundColor(mark(col))}
            }
        }
    }
}
