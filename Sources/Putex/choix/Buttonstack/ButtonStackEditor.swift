//
//  ButtonStackEditor.swift
//  Putex
//
//  Created by Herve Crespel on 13/06/2026.
//
import SwiftUI
import Taxionomy

public struct ButtonStackEditor : View {
    @Binding var rows: [[String]]
    var mots:[Mot] = [Mot("ligne","lignes",.f),Mot("colonne","colonnes",.f)]
    var width = 200
    
    @State private var bc = (row:0, col:0)
    
    @State private var label = ""
    
    @State private var newtop = false
    @State private var newbottom = false
    @State private var rowedit = -1
    @State private var newright = false
    @State private var newleft = false
    @State var pleinpied = true
    
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
    
    func defocus() {
        label = ""
        rowedit = -1
        focus = false
        bc = (row:-1, col:-1)
    }
    
    var buttons: some View {
        ForEach (0..<$rows.count, id:\.self) {
            row in
            HStack(spacing:20) {
                
                if newleft && rowedit == row {
                    TextField("", text:$label).frame(width:100)
                        .focused($focus)
                        .onSubmit {
                            rows[row] = [label] + rows[row]
                            newleft = false
                            defocus()
                        }
                } else {
                    Button(action:{
                        newleft = true
                        rowedit = row
                        focus = true
                    })
                    {Image(systemName: "chevron.left")}
                        .disabled(focus)
                        .padding(.trailing,20)
                }
                ButtonRow(bc: $bc, label: $label, cols: rows[row], row:row, width: width, done:{})
                
                if newright && rowedit == row {
                    TextField("", text:$label).frame(width:100)
                        .focused($focus)
                        .onSubmit {
                            rows[row].append(label)
                            newright = false
                            defocus()
                        }
                } else {
                    Button(action:{
                        newright = true
                        rowedit = row
                        focus = true
                    })
                    {Image(systemName: "chevron.right")}
                        .disabled(focus)
                        .padding(.leading,20)
                }
            }
        }
    }
    
    public var body: some View {
        VStack {
            if rows.isEmpty {
                Text("ajouter " + mots[1].indéterminé)
                TextField("", text:$label).frame(width:CGFloat(width))
                    .focused($focus)
                    .onSubmit {
                        rows =  [[label]]
                        newtop = false
                        defocus()
                    }
            } else {
                if !pleinpied {
                    if newtop {
                        TextField("", text:$label).frame(width:CGFloat(width))
                            .focused($focus)
                            .onSubmit {
                                rows =  [[label]] + rows
                                newtop = false
                                defocus()
                            }
                    } else {
                        Button(action:{
                            newtop = true
                            focus = true
                        })
                        {Image(systemName: "chevron.up")}
                            .padding(.bottom,20).disabled(focus)
                    }
                }
                
                buttons
                
                if !pleinpied {
                    if newbottom  {
                        TextField("", text:$label).frame(width:CGFloat(width))
                            .focused($focus)
                            .onSubmit {
                                rows = rows + [[label]]
                                newbottom = false
                                defocus()
                            }
                    } else {
                        Button(action:{
                            newbottom = true
                            focus = true
                        })
                        {Image(systemName: "chevron.down")}
                            .padding(.top,20).disabled(focus)
                    }
                }
                
                if rows.count > 0 {
                    HStack {
                        if pleinpied {
                            Button(action: { pleinpied = false })
                            {Text("plusieurs " + mots[0].pluriel).foregroundColor(.gray)}
                        } else {
                            Button(action: { pleinpied = true })
                            {Text("un seul " + mots[0].singulier).foregroundColor(.gray)}
                        }
                        Spacer()
                        Button(action:{
                            defocus()
                            done()
                        })
                        {Text("valider")} //.foregroundColor(.gray)}
                            .padding(20)
                            .disabled(focus)
                        Spacer()
                    }
                }
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
