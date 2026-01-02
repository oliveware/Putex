//
//  ContinentPicker.swift
//  Putex
//
//  Created by Herve Crespel on 07/10/2025.
//
import SwiftUI

struct ContinentPicker : View {
    @State var world = World.sept
    @Binding var lid : LID
    @Binding var continent: Continent
    @Binding var territoire: Territoire
    
    @State var selection = 0
    @State var edition = false
    @State var creation = false
    
    var barre:some View {
        HStack {
            if continent.nom != "" {
                Button(action:{
                    continent = Continent()
                    territoire = Territoire()
                    lid = LID()
                })
                {Text(continent.nom)}

            }
            Spacer()
        }
    }
    
    var body:some View {
        VStack {
            barre
            Spacer()
            if continent.nom == "" {
                HStack {
                    VStack(alignment:.leading) {
                        ForEach($world.continents){
                            item in
                            Button(action:{
                                continent = item.wrappedValue
                                lid = LID([continent.id])
                            })
                            {Text(item.wrappedValue.nom).frame(width:150, alignment: .center)}
                            
                        }
                    }
                    Spacer()
                    Text("Choisir un continent")
                    Spacer()
                }
            } else {
                if territoire.nom == "" {
                    HStack {
                        VStack(alignment:.leading) {
                            ForEach($continent.territoires){
                                item in
                                Button(action:{
                                    territoire = item.wrappedValue
                                    lid = LID([continent.id, territoire.id])
                                })
                                {Text(item.wrappedValue.nom).frame(width:150, alignment: .center)}
                                
                            }
                        }
                        Spacer()
                        Text("Choisir un territoire")
                        Spacer()
                    }
                } else {
                    RegionPicker(lid:$lid, continent:$continent, territoire:$territoire)
                        
                }
            }
            Spacer()
                //  Button("ajouter un territoire",action:add)
        }/*.onChange(of:territoire.id, {lid=LID([continent.id, territoire.id])})
            .onChange(of:continent.id, {
                lid=LID([continent.id])
                territoire = Territoire()
            })*/
    }
    
    func add() {
        continent.add()
      //  selected = Territoire()
      //  continent.territoires.append(Territoire($continent.lid))
    }
}
