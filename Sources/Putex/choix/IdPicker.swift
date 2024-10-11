//
//  Idref.swift
//  Putex
//
//  Created by Herve Crespel on 04/10/2024.
//

public protocol Lookable {
    static var prompt:String {get}

    var id:String {get set}
    var label:String {get set}
    init(_ id:String,_ label:String)
}
@Observable
class Looksample : Lookable {
    static var prompt = "sample"
    static var all : [Looksample] =
    [
        Looksample("SG", "Société Générale"),
        Looksample("CM", "Crédit Mutuel"),
        Looksample("BP", "Banque Postale")
    ]

    var id:String
    var label:String
  //  init() { self.init("","") }
    required init(_ id:String, _ label:String) {
        self.id = id
        self.label = label
    }
    
    //func creator = Lookcreator(item:)
    
}

struct Lookcreator<T:Lookable>: View {
     var item:T
    @Binding var creation:Bool
    @State private var id:String = ""
    @State private var label:String = ""
    
    init(_ item:T, _ creation:Binding<Bool>) {
        self.item = item
        _creation = creation
    }
    
    var body: some View {
        Form {
            TextField("id", text:$id)
            TextField("label", text:$label)
            Button(action:{
              // item.id = id
              //  item.label = label
                creation = false
            }){
                Text("done")
            }
        }
    }
}





import SwiftUI

public struct ClassPicker<T:Lookable>: View {
    var width: CGFloat = 200
    var height: CGFloat = 65
    @Binding var items : [T]
    @Binding var selected : T
    @State var creation = false
    
    public init(_ items:Binding<[T]>, _ selected:Binding<T>) {
        _items = items
        _selected = selected
    }
    
    public var body: some View {
        VStack {
            //Text(T.prompt)
            ScrollView {
                VStack(spacing:2){
                    ForEach(0..<$items.count, id: \.self) {
                        index in
                        let item = items[index]
                        if item.label == "" && creation {
                            Lookcreator(items[index], $creation)
                        } else {
                            Button( action: {
                                choose(item)
                            }){
                                Text(item.label)
                                    .frame(width:width)
                            }
                        }
                    }
                }.frame(alignment: .center)
            }//.frame(height:height)

                Button( action: {new()}) {
                    Text("ajouter").frame(width:width)
                }

        }//.frame(height:350)
    }
    
    func new(){
        selected = T("","")
        items.append(selected)
        creation = true
    }
    
    func choose(_ item:T) {
        selected = item
    }
}



struct ClassPickerPreview : View {
    @State var items = Looksample.all
    @State var item = Looksample("","")
    
    var body: some View {
        VStack {
            ClassPicker($items, $item)
                //.frame(width:300,height:450)
            Text(item.label)
        }.padding(10)
            //.frame(height:400)
    }
}


#Preview {
    ClassPickerPreview()
}
