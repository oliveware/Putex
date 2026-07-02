//
//  StackEditor.swift
//  ButtonStack
//
//  Created by Herve Crespel on 01/07/2026.
//

import SwiftUI
import Taxionomy

public struct StackEditor<T:Stackable> : View {
    @Binding var things: [[T]]
    var mots:[Mot] = [Mot("ligne","lignes",.f),Mot("colonne","colonnes",.f)]
    @State var width = 300
    
    @State private var selected = (row:-1, col:-1)

    @State var pleinpied :Bool
    
    var done: () -> Void
    @FocusState private var focus
    
    public init(_ rows:Binding<[[T]]>, _ done:@escaping () -> Void,
         _ mots:[Mot]? = nil) {
        _things = rows
        self.done = done
        if mots != nil { self.mots = mots! }
        pleinpied = rows.wrappedValue.count == 1
        focus = rows.count == 0
    }
    
    func setwidth() -> Int {
        var max = 0
        for row in things {
            var rowlarge = 0
            for col in row {
                rowlarge += col.label.count
            }
            if rowlarge > max { max = rowlarge }
        }
        return 15 * max
    }
    
    var verticalnav:Bool {
        switch things.count {
        case ...0 : return false
        case 1 : return !pleinpied && things[0][0].label != ""
        default : return !pleinpied
        }
    }
    
    @State var label : String = ""
    var buttons: some View {
        VStack {
            if things.count == 0 {
                Text("nommer " + mots[1].indéterminé)
                TextField("", text:$label).frame(width:CGFloat(width))
                    .focused($focus)
                    .onSubmit {
                        things =  [[T(label)]]
                    }
            } else {
                ForEach (0..<$things.count, id:\.self) {
                    row in
                    RowEditor($selected, $things[row], mots[1], $width, {
                        selected.row = row
                    })
                }
            }
        }
    }
    
    public var body: some View {
        VStack {
            HStack {
                if things.count > 0 {
                    if pleinpied {
                        Button(action: { pleinpied = false })
                        {Text("plusieurs " + mots[0].pluriel).foregroundColor(.gray)}
                    } else {
                        Button(action: {
                            pleinpied = true
                            things = [things[0]]
                        })
                        {Text("unique " + mots[0].singulier).foregroundColor(.gray)}
                    }
                }
                Spacer()
                VStack {
                    if verticalnav {
                        Button(action:{ things = [[T()]] + things })
                        {Image(systemName: "chevron.up")}
                            .padding(.bottom,20).disabled(focus)
                    }
                    
                    buttons
                    
                    if verticalnav {
                        Button(action:{ things.append([T()]) })
                        {Image(systemName: "chevron.down")}
                            .padding(.top,20).disabled(focus)
                    }
                }
                Spacer()
            }
            if things.count > 0 {
                HStack(spacing:20) {
                    Button(action:{ things = [] })
                    {Text("annuler")} //.foregroundColor(.gray)}

                    Button(action:{
                        done()
                        selected = (row:-1, col:-1)
                    })
                    {Text("valider")} //.foregroundColor(.gray)}
                      
                }.padding(20)
            }
        }
    }
}

struct ButtonStackPreview : View {
    @State var selected = (row:-1, col:-1)
    
    @State var rows = [[Thing("second")],[Thing("premier")],[Thing("gauche"),Thing("droit")]]
    
    @State var edition = false
    
    var label :String {
        if selected.row > -1 && selected.col > -1 {
            return rows[selected.row][selected.col].label
        } else { return "??"}
    }
    
    func valider() {
        edition = false
    }
    
    var body: some View {
        VStack(spacing:20) {
            if rows.count == 0 {
                StackEditor($rows, {edition = true} )
            } else {
                if edition {
                    StackEditor($rows, valider )
                } else {
                    HStack(spacing:50) {
                        RowStack($selected, rows, done:valider)
                        if rows.count > 0 {
                            GroupBox("sélection") {
                                Text("(\(rows.count - 1 - selected.row) , \(selected.col))  \(label)")
                            }
                        }
                    }.padding(20)
                    Button(rows.count > 0 ? "modifier": "créer", action:{edition = true})
                }
            }
        }.frame(width:700, height:400)
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
        [Thing("troisième")],
        [Thing("2g"),Thing("2d")],
        [Thing("1a"),Thing("1b"), Thing("1c")],
        [Thing("rdc1"), Thing("rdc2")]])
}

