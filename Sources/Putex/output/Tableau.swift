//
//  Tableau.swift
//  Putex
//
//  Created by Herve Crespel on 02/09/2026.
//
import SwiftUI

public struct Tableau : View {
    var cells:[[String]]
    var charwidth = 8
    var nblines: Int { cells.count }
    
    var large:[CGFloat]// = [100,100,100]
    {   var large: [CGFloat] = []
        if cells.count > 0 {
            let nbcol = cells[0].count
            for col in 0..<nbcol {
                large.append(CGFloat(charwidth * cells[0][col].count))
            }
            var cols: [CGFloat] = []
            
            for line in cells {
                cols = []
                for col in 0..<nbcol {
                    let colarge = CGFloat(charwidth * line[col].count)
                    if colarge > large[col] {
                        cols.append(colarge)
                    } else {
                        cols.append(large[col])
                    }
                }
                large = cols
            }
        }
        return large
    }
    
    public init(_ cells:[[String]]) {
        self.cells = cells
    }
    
   public  var body:some View {
        ForEach(0..<nblines, id:\.self) {
            line in
            FormattedRow(cols:cells[line], large:large)
        }
    }
}

struct Pretableau : View {
    var cells = [["dqzdaz", "zdqsd", "gyjukuk"],
                 ["dqzdafhdghfz", "zdqtyutyutuiusd", "gyjukuk"],
                 ["dqzdaz", "zdqsd", "gyjukudfsdgfk"],
                ["dqzdaz", "zdqsd", "gyjukuk"]
    ]
    var body: some View {
        Tableau(cells)
        FormattedRow(cols:cells[0])
    }
}

#Preview {
    Pretableau()
}
