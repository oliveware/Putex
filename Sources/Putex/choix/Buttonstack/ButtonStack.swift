//
//  ButtonStack.swift
//  Putex
//
//  Created by Herve Crespel on 01/06/2025.
//

import SwiftUI
import Taxionomy

public struct ButtonStack: View {
    @Binding var bc : (row:Int, col:Int)
    @Binding var label:String
    var rows: [[String]]
    var width = 200
    var done: () -> Void
    
    public init(_ bc:Binding<(row:Int, col:Int)>,_ label:Binding<String>,
                _ rows: [[String]], _ large:Int? = nil, done: @escaping () -> Void ) {
        _bc = bc
        _label = label
        self.rows = rows
        if large == nil {
            var max = 0
            for row in rows {
                var rowlarge = 0
                for col in row {
                    rowlarge += col.count
                }
                if rowlarge > max { max = rowlarge }
            }
            width = 12 * max
        } else {
            width = large!
        }
        self.done = done
    }

    public var body: some View {
        VStack {
            ForEach (0..<rows.count, id:\.self) {
                row in
                ButtonRow(bc: $bc, label:$label, cols: rows[row], row:row, width: width, done: done)
            }
        }
    }
}


