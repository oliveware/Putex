//
//  RowEditor.swift
//  ButtonStack
//
//  Created by Herve Crespel on 13/06/2026.
//
import SwiftUI
import Taxionomy

struct RowEditor<T:Stackable>: View {
    @Binding var selected:(row:Int, col:Int)
    @Binding var things: [T]
    @State private var label = ""
    var mot = Mot("colonne", "colonnes", .f)
    @Binding var width: Int
    
    @State private var edited = -1
    
    var spacing = 10
    var colwidth: CGFloat {
        let nthings = things.count
        if nthings > 0 {
            return CGFloat(Double(width - (spacing+15) * nthings) / Double(nthings))
        } else {
            return CGFloat(width)
        }
    }
    var done: () -> Void
    @FocusState private var focus
    
    init(_ selected:Binding<(row:Int, col:Int)>, _ cols: Binding<[T]>,_ mot:Mot, _ width:Binding<Int>, _ done: @escaping () -> Void) {
        _selected = selected
        _things = cols
        self.done = done
        _width = width
        self.mot = mot
        focus = true
    }
    
    func mark(_ col:Int) -> Bool {
        col == selected.col
    }
    
    var buttons: some View {
        ForEach (0..<$things.count, id:\.self) { col in
            if col == edited  {
                TextField("", text:$things[col].label).frame(width:colwidth)
                    .focused($focus)
                    .onSubmit { done()
                        edited = -1 }
            } else {
                Button(action:{
                    selected.col = col
                    edited = col
                    focus = edited == col
                    done()
                })
                {Text(things[col].label).frame(width:colwidth)}
            }
        }
    }
    
    var body: some View {
        
        HStack (spacing:CGFloat(spacing)) {
            if things.count == 0 {
                TextField("", text:$label).frame(width:colwidth)
                    .focused($focus)
                    .onSubmit { things = [T(label)]
                        label = ""
                        edited = -1 }
            } else {
                Button(action:{
                    things = [T()] + things
                    edited = 0
                    focus = true
                })
                {Image(systemName: "chevron.left")}
                    .disabled(focus)
                    .padding(.trailing,20)
                
                buttons
                
                Button(action:{
                    things.append(T())
                    edited = things.count - 1
                    focus = true
                })
                {Image(systemName: "chevron.right")}
                    .disabled(focus)
                    .padding(.leading,20)
            }
        }
        
    }
}
