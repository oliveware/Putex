//
//  TerritoireView.swift
//  Putex
//
//  Created by Herve Crespel on 08/11/2024.
//
import SwiftUI

struct TerritoireView : View {
    @Binding var territoire: Territoire

    @State var commune = Commune()
    @State var quartier = Quartier()
    @State var terrain = Terrain()

    var body:some View {
        NavigationSplitView {
            List {
                ForEach($territoire.regions) { item in
                    NavigationLink {
                        RegionView(region:item, commune:$commune, quartier:$quartier, terrain:$terrain)
                            .onChange(of:item.id) {
                                commune = Commune()
                                quartier = Quartier()
                                terrain = Terrain()
                            }
                    } label: {
                        Text(item.wrappedValue.nom)
                    }
                }
              //  .onDelete(perform: deleteItems)
            }
#if os(macOS)
            .navigationSplitViewColumnWidth(min: 130, ideal: 120)
#endif

       } detail: {
            Text("Select an item")
        }
     
        
      /*
       
       @State private var departmentId: Department.ID? // Single selection.
       @State private var employeeIds: Set<Employee.ID> = [] // Multiple selection.

       var body: some View {
           NavigationSplitView {
               List(model.departments, selection: $departmentId) { department in
                   Text(department.name)
               }
           } content: {
               if let department = model.department(id: departmentId) {
                   List(department.employees, selection: $employeeIds) { employee in
                       Text(employee.name)
                   }
               } else {
                   Text("Select a department")
               }
           } detail: {
               EmployeeDetails(for: employeeIds)
           }
       }

       
       HStack {
            VStack {
               // TextField("",text:$territoire.nom)
                ForEach($territoire.regions){
                    region in
                    Button(action:{selected = region.wrappedValue})
                    {
                        Text(region.wrappedValue.nom).frame(width:100)
                    }
                }
            }
            Spacer()
            RegionView(region:$selected)
        }.frame(alignment:.leading)
       */
    }
}
