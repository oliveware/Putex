//
//  Confirmation.swift
//  Putex
//
//  Created by Herve Crespel on 08/12/2024.
//
import SwiftUI

public struct ActionToConfirm {
    var title:String        = "Permanently erase the items in the Trash?"
    var message:String      = "You can't undo this action."
    var buttontext:String   = "Confirm"
    var action:()->Void
    
    public init(_ title:String, _ alert:String, _ confirm:String, _ action:@escaping () -> Void) {
        self.title = title
        self.message = alert
        self.buttontext = confirm
        self.action = action
    }

}

struct ConfirmationPanel : View {
    @Binding var confirmed: Bool
    var action: ActionToConfirm?
    
    init(_ action: ActionToConfirm?, _ confirmed:Binding<Bool>) {
        self.action = action
        _confirmed = confirmed
    }
    
     var body: some View {
        VStack {
        if action == nil {
            Text ("undefined action")
        } else {
            Spacer()
            Text(action!.title).font(.title)
            Text(action!.message)
            Spacer()
            HStack {
                Button(action:action!.action)     // .destructive
                {Text(action!.buttontext)}
                Button(action:{confirmed = false})
                {Text("annuler")}
            }.padding(10)
        }
        }.padding(10)
    }
}

public struct ConfirmedButton: View {
    @State private var onsheet = false
    var action: ActionToConfirm?
    var buttontext:String?
    var iconame:String?
    
    public init(_ action: ActionToConfirm, _ label:String) {
        self.action = action
        buttontext = label
    }
    
    public init(_ kind:String, _ instance:String, _ action:@escaping () -> Void) {
        if kind == "minus" {
            self.action = ActionToConfirm("Effacer \(instance)", "les données seront perdues", "confirmer la suppression", action)
            iconame = "minus"
        }
    }
    
    var label: some View {
        HStack {
            if iconame != nil { Image(systemName: iconame!) }
            if buttontext != nil { Text(buttontext!) }
            if buttontext == nil && iconame == nil { Text("undefined") }
        }
    }
    
    
    public var body: some View {
        Button(action: { onsheet = true })
        {label}
            .sheet(isPresented: $onsheet, content: {ConfirmationPanel(action,$onsheet)})
        
 /*
#if iOS
        .actionSheet(isPresented: $isShowingSheet) {
            ActionSheet(
                title: Text("Permanently erase the items in the Trash?"),
                message: Text("You can't undo this action."),
                buttons:[
                    .destructive(Text("Empty Trash"),
                                 action: emptyTrashAction),
                    .cancel()
                ]
            )}
#endif
  */
    }
}


struct ConfirmedButtonPreview: View {
    var body: some View {
        ConfirmedButton("minus", "cette chose", {})
            .frame(width:150, height: 50)
    }
}

#Preview {
    ConfirmedButtonPreview()
}
