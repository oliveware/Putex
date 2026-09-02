//
//  Tableau.swift
//  Putex
//
//  Created by Herve Crespel on 02/09/2026.
//
import SwiftUI

public struct Tableau : View {
    var cells:[[String]]
    
    var nblines: Int { cells.count }
    
    var large:[CGFloat] {
        let nbcol = cells[0].count
        var cols: [CGFloat] = []
        var large: [CGFloat] = []
        for line in cells {
            cols = []
            for col in 0..<nbcol {
               let colarge = CGFloat(line[col].count)
                if colarge > large[col] {
                    cols.append(colarge)
                } else {
                    cols.append(large[col])
                }
            }
            large = cols
        }
        return large
    }
    
   public  var body:some View {
        VStack {
            ForEach(0..<nblines, id:\.self) {
                line in
                FormattedRow(cols:cells[line], large:large)
            }
        }
    }
}
