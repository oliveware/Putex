//
//  ButtonStack.swift
//  Putex
//
//  Created by Herve Crespel on 01/06/2025.
//

import SwiftUI
import Taxionomy

struct ButtonRow: View {
    @Binding var bc:(row:Int, col:Int)
    @Binding var label:String
    var cols: [String] = []
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

public struct ButtonStackEditor : View {
    @Binding var rows: [[String]]
    var mots:[Mot] = [Mot("ligne","lignes",.f),Mot("colonne","colonnes",.f)]
    var width = 200
    
    @State private var bc = (row:0, col:0)
    @State private var newrow = false
    @State private var newcol = -1
    @State private var label = ""
    
    var done: () -> Void
    @FocusState private var focus
    
    public init(_ rows:Binding<[[String]]>, _ done:@escaping () -> Void,
         _ mots:[Mot]? = nil) {
        _rows = rows
        self.done = done
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
                        rows =  [[label]] + rows
                        label = ""
                        newrow = false
                        focus = false
                    }
            } else {
                Button(action:{
                    newrow = true
                    focus = true
                })
                { Text("ajouter " + mots[0].indéterminé) }
                    .padding(20).disabled(focus)
            }
            ForEach (0..<$rows.count, id:\.self) {
                row in
                HStack(spacing:20) {
                    ButtonRow(bc: $bc, label: $label, cols: rows[row], row:row, width: width, done:{})
                    
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
                        { Text("ajouter " + mots[1].indéterminé) }
                            .disabled(focus)
                            .padding(.leading,20)
                    }
                }
            }
            if rows.count > 0 {
                Button("valider", action:{ done() }).padding(20)
                    .disabled(focus)
            }
        }
    }
}

struct ButtonStackPreview : View {
    @State var bc = (row:0, col:0)
    @State var label = ""
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
                    ButtonStack($bc, $label, rows, done:valider)
                    if rows.count > 0 {
                        Text("\(rows.count - 1 - bc.row) - \(bc.col)  \(label)")
                    }
                }.padding(20)
                Button(rows.count > 0 ? "modifier": "créer", action:{edition = true})
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
    ButtonStackPreview(rows : [
        ["troisième"],
        ["2g","2d"],
        ["1a","1b", "1c"],
        ["rdc1", "rdc2"]])
}
