//
//  ButtonStack.swift
//  Putex
//
//  Created by Herve Crespel on 01/06/2025.
//

import SwiftUI

struct ButtonRow: View {
    @Binding var selected:(row:Int, col:Int)
    var cols: [String] = []
    var row:Int
    var width: Int = 200
    
    var spacing = 10
    var colwidth: CGFloat {
        CGFloat(Double(width - (spacing+15)*(cols.count-1)) / Double(cols.count))
    }
    
    var body: some View {
        HStack (spacing:CGFloat(spacing)) {
            ForEach (0..<cols.count, id:\.self) {
                col in
                Button(action:{selected = (row:row,                                                          col:col)})
                {Text(cols[col]).frame(width:colwidth)}
            }
        }
        
    }
}

public struct ButtonStack: View {
    @Binding var bc : (row:Int, col:Int)
    var rows: [[String]]
    var width = 200
    
    public init(_ bc:Binding<(row:Int, col:Int)>,_ rows: [[String]], _ large:Int? = nil) {
        _bc = bc
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
    }

    public var body: some View {
        VStack {
            ForEach (0..<rows.count, id:\.self) {
                row in
                ButtonRow(selected: $bc, cols: rows[row], row:row, width: width)
            }
        }
    }
}

public struct ButtonStackEditor : View {
    @Binding var rows: [[String]]
    var mots:[Mot] = [Mot("ligne","lignes",.f),Mot("colonne","colonnes",.f)]
    var width = 200
    
    @State private var bc = (row:0, col:0)
    @State private var newrow = false
    @State private var newcol = -1
    @State private var label = ""
    
    
    var valider: () -> Void
    @FocusState private var focus
    
    public init(_ rows:Binding<[[String]]>, _ done:@escaping () -> Void,
         _ mots:[Mot]? = nil) {
        _rows = rows
        valider = done
        if mots != nil {
            self.mots = mots!
        }
    }
    
    public var body: some View {
        VStack {
            if newrow {
                TextField("", text:$label).frame(width:CGFloat(width))
                    .focused($focus)
                    .onSubmit {
                        rows = [[label]] + rows
                        label = ""
                        newrow = false
                        focus = false
                    }
            } else {
                Button(action:{
                    newrow = true
                    focus = true
                })
                { Image(systemName: "plus") }.padding(20).disabled(focus)
            }
            ForEach (0..<$rows.count, id:\.self) {
                row in
                HStack(spacing:20) {
                    ButtonRow(selected: $bc, cols: rows[row], row:row, width: width)
                    
                    if newcol == row {
                        TextField("", text:$label).frame(width:100)
                            .focused($focus)
                            .onSubmit {
                                rows[row].append(label)
                                label = ""
                                newcol = -1
                                focus = false
                            }
                    } else {
                        Button(action:{
                            newcol = row
                            focus = true
                        })
                        { Image(systemName: "plus") }.disabled(focus)
                    }
                }
            }
            if rows.count == 0 {
                Text("ajouter " + mots[0].indéterminé)
            } else {
                Button("valider", action:{ valider() }).padding(20)
                    .disabled(focus)
            }
        }
    }
}

struct ButtonStackPreview : View {
    @State var bc = (row:0, col:0)
    @State var rows = [["second"],["premier"],["gauche","droit"]]
    
    @State var edition = false
    
    func valider() {
        edition = false
    }
    
    var body: some View {
        VStack(spacing:20) {
            if edition {
                ButtonStackEditor($rows, valider )
            } else {
                HStack(spacing:50) {
                    ButtonStack($bc, rows)
                    Text("\(bc.row) - \(bc.col)")
                }.padding(20)
                Button("edit", action:{edition = true})
            }
        }.frame(width:500, height:400)
    }
}

#Preview("vierge") {
    ButtonStackPreview(rows:[])
}
#Preview("seclin") {
    ButtonStackPreview()
}
#Preview("more") {
    ButtonStackPreview(rows : [["troisième"],["2g","2d"],["1a","1b", "1c"],["rdc1", "rdc2"]])
}
