//
//  RowStack.swift
//  ButtonStack
//
//  Created by Herve Crespel on 01/07/2026.
//

import SwiftUI
import Taxionomy

public struct RowStack<T:Stackable>: View {
    @Binding var selected : (row:Int, col:Int)
    var things: [[T]]
    @State var width = 200
    var done: () -> Void
    
    public init(_ selected:Binding<(row:Int, col:Int)>,
                _ rows: [[T]], _ large:Int? = nil, done: @escaping () -> Void ) {
        _selected = selected
        things = rows
        if large == nil {
            var max = 0
            for row in rows {
                var rowlarge = 0
                for col in row {
                    rowlarge += col.label.count
                }
                if rowlarge > max { max = rowlarge }
            }
            width = 13 * max
        } else {
            width = large!
        }
        self.done = done
    }
    
    func select(_ row:Int) {
        selected.row = row
        done()
    }

    public var body: some View {
        VStack {
            ForEach (0..<things.count, id:\.self) {
                row in
                Row($selected, things[row], $width, row, { select(row) })
            }
        }
    }
}
