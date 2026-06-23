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
    var cols: [String]
    
    @Binding var width: Int
    var done: () -> Void
    
    var spacing = 10
    var colwidth: CGFloat {
        CGFloat(Double(width - (spacing+15)*(cols.count-1)) / Double(cols.count))
    }
    
    init(_ bc:Binding<(row:Int, col:Int)>, _ cols: [String],_ width:Binding<Int>, _ done: @escaping () -> Void) {
        _bc = bc
        self.cols = cols
        self.done = done
        _width = width
    }
    
    var body: some View {
        HStack {
            ForEach (0..<cols.count, id:\.self) { col in
                Button(action:{
                    bc.col = col
                    done()
                })
                {Text(cols[col]).frame(width:colwidth)}
                // .foregroundColor(mark(col) ? .yellow : .white)}
            }
        }
    }
}

struct ButtonRowEditor: View {
    @Binding var bc:(row:Int, col:Int)
    @Binding var labels: [String]
    @State private var label = ""
    var mot = Mot("colonne", "colonnes", .f)
    @Binding var width: Int
    
    @State private var edited = -1
    
    var spacing = 10
    var colwidth: CGFloat {
        let nbc = labels.count
        return CGFloat(Double(width - (spacing+15) * nbc) / Double(nbc))
    }
    var done: () -> Void
    @FocusState private var focus
    
    init(_ bc:Binding<(row:Int, col:Int)>, _ cols: Binding<[String]>,_ width:Binding<Int>, _ done: @escaping () -> Void) {
        _bc = bc
        _labels = cols
        self.done = done
        _width = width
    }
    
    func mark(_ col:Int) -> Bool {
        col == bc.col
    }
    
    var buttons: some View {
        ForEach (0..<$labels.count, id:\.self) { col in
            if col == edited {
                TextField("", text:$labels[col]).frame(width:colwidth)
                    .focused($focus)
                    .onSubmit { edited = -1 }
            } else {
                Button(action:{
                    bc.col = col
                    edited = col
                    focus = edited == col
                    done()
                })
                {Text(labels[col]).frame(width:colwidth)}
            }
        }
    }
    
    var body: some View {
        if labels.isEmpty {
            Text("ajouter " + mot.indéterminé)
            TextField("", text:$label).frame(width:CGFloat(width))
                .focused($focus)
                .onSubmit {
                    labels =  [label]
                }
        } else {
            HStack (spacing:CGFloat(spacing)) {
                Button(action:{
                    labels = [""] + labels
                    edited = 0
                    focus = true
                })
                {Image(systemName: "chevron.left")}
                    .disabled(focus)
                    .padding(.trailing,20)
                
                buttons
                
                Button(action:{
                    labels.append("")
                    edited = labels.count - 1
                    focus = true
                })
                {Image(systemName: "chevron.right")}
                    .disabled(focus)
                    .padding(.leading,20)
            }
        }
    }
}
