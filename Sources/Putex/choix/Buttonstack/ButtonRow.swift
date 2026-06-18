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
    var editable : Bool
    @Binding var cols: [String]
    
    var width: Int
    
    @State private var edited = -1
    
    var spacing = 10
    var colwidth: CGFloat {
        CGFloat(Double(width - (spacing+15)*(cols.count-1)) / Double(cols.count))
    }
    var done: () -> Void
    @FocusState private var focus
    
    init(_ bc:Binding<(row:Int, col:Int)>, _ editable:Bool, _ cols: Binding<[String]>,_ width:Int, _ done: @escaping () -> Void) {
        _bc = bc
        _cols = cols
        self.width = width
        self.done = done
        self.editable = editable
        
    }
    
    func edition(_ col:Int) -> Bool {
        for c in 0..<cols.count {
            if cols[c] == "" { edited = c }
        }
        return edited == col
    }
    
    func mark(_ col:Int) -> Bool {
         col == bc.col
    }
    
    var body: some View {
        HStack (spacing:CGFloat(spacing)) {
            if editable {
                ForEach (0..<$cols.count, id:\.self) { col in
                    if edition(col)  {
                        TextField("", text:$cols[col]).frame(width:colwidth)
                            .focused($focus)
                            .onSubmit {
                                edited = -1
                            }
                    } else {
                        Button(action:{
                            bc.col = col
                            edited = col
                            focus = edited == col
                            done()
                        })
                        {Text(cols[col]).frame(width:colwidth)}
                    }
                }
            } else {
                ForEach (0..<cols.count, id:\.self) { col in
                    Button(action:{
                        bc.col = col
                        //selected = col
                        done()
                    })
                    {Text(cols[col]).frame(width:colwidth)
                        .foregroundColor(mark(col) ? .yellow : .white)}
                }
            }
        }
    }
}
