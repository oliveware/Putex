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
    var labels: [[String]]
    @State var width = 200
    var done: () -> Void
    
    public init(_ bc:Binding<(row:Int, col:Int)>,
                _ rows: [[String]], _ large:Int? = nil, done: @escaping () -> Void ) {
        _bc = bc
        labels = rows
        if large == nil {
            var max = 0
            for row in rows {
                var rowlarge = 0
                for col in row {
                    rowlarge += col.count
                }
                if rowlarge > max { max = rowlarge }
            }
            width = 13 * max
        } else {
            width = large!
        }
        self.done = done
    }
    
  

    public var body: some View {
        VStack {
            ForEach (0..<labels.count, id:\.self) {
                row in
                ButtonRow($bc, labels[row], $width, {
                    bc.row = row
                })
            }
        }
    }
}


