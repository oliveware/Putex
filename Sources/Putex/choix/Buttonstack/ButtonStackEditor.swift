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
    
    func deselect() {
        bc = (row:-1, col:-1)
    }
    
    var buttons: some View {
        ForEach (0..<$rows.count, id:\.self) {
            row in
            HStack(spacing:20) {
                Button(action:{
                    rows[row] = [""] + rows[row]
                })
                {Image(systemName: "chevron.left")}
                   .disabled(focus)
                    .padding(.trailing,20)
                
                ButtonRow($bc, true, $rows[row], width, {})

                Button(action:{
                    rows[row].append("")
                })
                {Image(systemName: "chevron.right")}
                   .disabled(focus)
                    .padding(.leading,20)
                }
            }
    }
    
    public var body: some View {
        HStack {
            if rows.isEmpty {
                Text("ajouter " + mots[1].indéterminé)
                TextField("", text:$label).frame(width:CGFloat(width))
                    .focused($focus)
                    .onSubmit {
                        rows =  [[label]]
                    }
            } else {
                if rows.count < 2 {
                    if pleinpied {
                        Button(action: { pleinpied = false })
                        {Text("plusieurs " + mots[0].pluriel).foregroundColor(.gray)}
                    } else {
                        Button(action: { pleinpied = true })
                        {Text("unique " + mots[0].singulier).foregroundColor(.gray)}
                    }
                }
                Spacer()
                
                VStack {
                    Spacer()
                    if !pleinpied || rows.count > 1 {
                        Button(action:{
                            
                            rows = [[""]] + rows
                        })
                        {Image(systemName: "chevron.up")}
                            .padding(.bottom,20).disabled(focus)
                    }
                    
                    buttons
                    
                    if !pleinpied  || rows.count > 1{
                        Button(action:{
                            rows.append([""])
                        })
                        {Image(systemName: "chevron.down")}
                            .padding(.top,20).disabled(focus)
                        
                    }
                    Spacer()
                    if rows.count > 0 {
                        Button(action:{
                            deselect()
                            done()
                        })
                        {Text("valider")} //.foregroundColor(.gray)}
                            .padding(20)
                            .disabled(focus)
                    }
                }
                Spacer()
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
                    ButtonStack($bc, $label, $rows, done:valider)
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
