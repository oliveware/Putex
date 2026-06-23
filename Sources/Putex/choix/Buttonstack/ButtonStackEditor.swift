//
//  ButtonStackEditor.swift
//  Putex
//
//  Created by Herve Crespel on 13/06/2026.
//
import SwiftUI
import Taxionomy

public struct ButtonStackEditor : View {
    @Binding var labels: [[String]]
    var mots:[Mot] = [Mot("ligne","lignes",.f),Mot("colonne","colonnes",.f)]
    @State var width = 300
    
    @State private var bc = (row:0, col:0)

    @State var pleinpied = true
    
    var done: () -> Void
    @FocusState private var focus
    
    public init(_ rows:Binding<[[String]]>, _ done:@escaping () -> Void,
         _ mots:[Mot]? = nil) {
        _labels = rows
        self.done = done
        if mots != nil { self.mots = mots! }
        focus = rows.isEmpty
    }
    
    func setwidth() -> Int {
        var max = 0
        for row in labels {
            var rowlarge = 0
            for col in row {
                rowlarge += col.count
            }
            if rowlarge > max { max = rowlarge }
        }
        return 15 * max
    }
    
    func deselect() {
        bc = (row:-1, col:-1)
    }
    
    var buttons: some View {
        ForEach (0..<$labels.count, id:\.self) {
            row in
            ButtonRowEditor($bc, $labels[row], $width, {
                bc.row = row
            })
        }
    }
    
    public var body: some View {
        HStack {
                if labels.count < 2 {
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
                    if !pleinpied || labels.count > 1 {
                        Button(action:{
                            
                            labels = [[""]] + labels
                        })
                        {Image(systemName: "chevron.up")}
                            .padding(.bottom,20).disabled(focus)
                    }
                    
                    buttons
                    
                    if !pleinpied  || labels.count > 1{
                        Button(action:{
                            labels.append([""])
                        })
                        {Image(systemName: "chevron.down")}
                            .padding(.top,20).disabled(focus)
                        
                    }
                    Spacer()
                    if labels.count > 0 {
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
                    ButtonStack($bc, rows, done:valider)
                    if rows.count > 0 {
                        Text("\(rows.count - 1 - bc.row) - \(bc.col)  \(label)")
                    }
                }.padding(20)
                Button(rows.count > 0 ? "modifier": "créer", action:{edition = true})
            }
        }.frame(width:600, height:400)
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
