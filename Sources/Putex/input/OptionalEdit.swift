struct OptionalEdit:View{
    var prompt:String
    @Binding var string:String?
    var remove:()->Void
    
    init(_ p:String, _ optional:Binding<String?>, _ rem:@escaping ()->Void ) {
        prompt = p
        _string = optional
        remove = rem
    }
    
    var body: some View {
        HStack {
            Text(prompt)
            if let stringBinding: Binding<String> = Binding($string) {
                TextField("" ,text:stringBinding)
                Button("retirer", action : remove )
                
            } else {
                Button("ajouter") { string = "" }
            }
        }
    }
}