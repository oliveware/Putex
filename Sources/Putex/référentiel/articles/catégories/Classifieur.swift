//
//  CategoryPicker.swift
//  Semantex
//
//  Created by Herve Crespel on 25/06/2025.
//

import SwiftUI


struct Classifieur: View {
    
    @Binding var selected: Classification
    @State var category : Category?
    @State var utility: Utility?
    @State var durable: Durable?
    @State var consommable:Consommable?
    @State var location:TypeLocation?
    
    init (_ classification: Binding<Classification>) {
        category = classification.wrappedValue.cat
        if let category: Binding<Category> = Binding(classification.cat) {
            switch category.wrappedValue  {
            case .utility:
                utility = Utility(rawValue:classification.wrappedValue.sub)
            case .consommable:
                consommable = Consommable(rawValue:classification.wrappedValue.sub)
            case .durable:
                durable = Durable(rawValue:classification.wrappedValue.sub)
            case .location:
                location = TypeLocation(rawValue:classification.wrappedValue.sub)
            default:
                break
            }
        }
        _selected = classification
    }
    
    var body: some View {
        HStack {
            //EnumPicker(Category.allCases, $category)
            Picker("", selection:$category) {
                ForEach(Category.all) {
                    item in
                    Text(item.rawValue).tag(item)
                }
            }.onChange(of: category, {selected = Classification( category, "")})
            if category != nil {
                if category! == .utility {
                    Picker("", selection:$utility) {
                        ForEach(Utility.all) {
                            item in
                            Text(item.rawValue).tag(item)
                        }
                    }.onChange(of: utility, {selected.sub = utility?.rawValue ?? ""})
                    Text(utility?.rawValue ?? "").hidden()
                }
                
                if category! == .durable {
                    Picker("", selection:$durable) {
                        ForEach(Durable.all) {
                            item in
                            Text(item.rawValue).tag(item)
                        }
                    }.onChange(of: durable, {selected.sub = durable?.rawValue ?? ""})
                  //  Text(durable?.rawValue ?? "").hidden()
                }
                if category! == .consommable {
                    Picker("", selection:$consommable) {
                        ForEach(Consommable.all) {
                            item in
                            Text(item.rawValue).tag(item)
                        }
                    }.onChange(of: consommable, {selected.sub = consommable?.rawValue ?? ""})
                   // Text(consommable?.rawValue ?? "").hidden()
                }
                if category! == .location {
                    Picker("", selection:$location) {
                        ForEach(TypeLocation.all) {
                            item in
                            Text(item.rawValue).tag(item)
                        }
                    }.onChange(of: location, {selected.sub = location?.rawValue ?? ""})
                }
            }
        }
    }
}

struct ClassifieurPreview : View {
    @State var selection = Classification(nil, "")
    
    var body: some View {
        VStack(spacing:20) {
            Classifieur($selection)
            Text (selection.astring)
        }
    }
}

#Preview {
    ClassifieurPreview().frame(width:400, height:100)
}
