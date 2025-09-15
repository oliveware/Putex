//
//  RegionView.swift
//  Putex
//
//  Created by Herve Crespel on 08/11/2024.
//
import SwiftUI

struct RegionView: View {
    @Binding var region: Region
    @State var edition : Bool
    
    init(_ region:Binding<Region>) {
        _region = region
        edition = region.wrappedValue.nom == ""
    }
    
    var body:some View {
        
        if edition {
            GroupBox {
                HStack {
                    RegionEditor(region:$region)
                    Spacer()
                    Button(action: { edition = false})
                    {Image(systemName: "checkmark")}
                }
            }
        } else {
            HStack {
                Text(region.nom).frame(width:200, alignment:.leading)
                if let km2 = region.km2 {
                    Text(String(km2) + " km2")
                }
                Spacer()
                Button(action: { edition = true})
                {Image(systemName: "pencil")}
            }
        }
        
    }
}

struct RegionEditor: View {
    @Binding var region: Region
    var body: some View {
        HStack(spacing:20) {
            VStack(alignment:.leading) {
                TextField("nom", text:$region.nom).frame(width:150)
                HStack{
                    TextField("km2", value:$region.km2, format : .number).frame(width:80, alignment:.trailing)
                    Text("km2")
                }.frame(alignment:.leading)
                Button("ajouter une commune", action:{region.communes.append(Commune())})
            }
            GroupBox("communes") {
               ScrollView{
                   ForEach($region.communes) {
                    item in
                       //Text(item.wrappedValue.nom)
                    CommuneView(item)
                   }.frame(alignment:.leading)
               }//.frame(height:CGFloat(continent.territoires.count * 7))
            }
        }
    }
}

struct RegionPicker: View {
    @Binding var lid:LID
    var continent:Continent
    var territoire: Territoire
    @Binding var region: Region
    @Binding var commune : Commune
    @Binding var quartier : Quartier
    @Binding var terrain : Terrain

    @State var ajout = false
    
    var body:some View {
        VStack(alignment:.leading) {
            
            if commune.nom == "" {
                HStack(alignment:.center)  {
                    VStack(alignment:.leading) {
                        ForEach($region.communes){
                            item in
                            if item.quartiers.count > 0 {
                                Button(action:{
                                    if item.quartiers.count == 1 {
                                        quartier = item.wrappedValue.quartiers[0]
                                        lid = LID([continent.id,territoire.id, region.id, item.id, quartier.id])
                                    } else {
                                        quartier = Quartier()
                                        lid = LID([continent.id,territoire.id, region.id, item.id])
                                    }
                                    terrain = Terrain()
                                    commune = item.wrappedValue
                                })
                                { Text(item.wrappedValue.nom).frame(width:120) }
                            }
                        }
                    }
                    Spacer()
                    VStack{
                        Text("Choisir une commune").padding(.bottom,10)
                        if ajout {
                            Button("ajouter une commune", action:{
                                ajout = true
                                region.communes = [Commune()] + $region.wrappedValue.communes
                                commune = region.communes[0]
                            })
                        }
                    }
                    Spacer()
                }
            } else {
                CommunePicker(lid:$lid, continent:continent, territoire:territoire, region:region, commune:$commune, quartier:$quartier, terrain:$terrain)
            }
       }
        
    }
    
    func add() {
        let new = Commune(lid)
        region.communes.append(new)
        commune = new
        ajout = true
    }
}
