//
//  Valeur.swift
//  Putex
//
//  Created by Herve Crespel on 21/11/2024.
//

public struct Valeur : Codable {
    
    public static func + (_ a:Valeur, _ b:Valeur) -> Valeur {
        let acquis = a.acquisition + b.acquisition
        let estim = a.estimation + b.estimation
        var vente : Estimation? = nil
        if a.revente != nil || b.revente != nil {
            vente = (a.revente ?? Estimation()) + (b.revente ?? Estimation())
        }
        return Valeur(acquis, estim, vente)
    }
    
    var acquisition = Estimation()
    var estimation = Estimation()
    // revente != nil <=> revendu
    var revente: Estimation?
    
    public var euro:String {
        if revente == nil {
            if estimation.montant == Montant() {
                return acquisition.montant.euro
            } else {
                return estimation.montant.euro + "(estimation du \(estimation.date.entexte))"
            }
        } else {
            return "revendu \(revente!.montant.euro)"
        }
    }
    
    init(_ acquisition: Estimation, _ estimation: Estimation, _ revente: Estimation? = nil) {
        self.acquisition = acquisition
        self.estimation = estimation
        self.revente = revente
    }
    
    public init() {}
    
    var potentiel:String {
        (estimation.montant - acquisition.montant).euro
    }
    var plusvalue:Montant {
        if revente == nil {
            Montant(0)
        } else {
            (revente!.montant - acquisition.montant)
        }
    }
}

import SwiftUI
public struct ValeurShow: View {
    var valeur:Valeur
    
    public init(_ valeur:Valeur){
        self.valeur = valeur
    }
    
    public var body: some View  {
        VStack {
            if !valeur.acquisition.checked {
                Text("valeur à définir")
            } else {
                Text("acquisition : " + valeur.acquisition.entexte)
                if !valeur.estimation.checked {
                    Text("estimation à établir")
                } else {
                    Text("estimation : " + valeur.estimation.entexte)
                    Text("plus-value potentielle : " + valeur.potentiel).padding(.top,10)
                    if valeur.revente != nil {
                        Text("revente : " + valeur.revente!.entexte).padding(.top,10)
                        Text("plus-value : " + valeur.plusvalue.euro).padding(.top,5)
                    }
                }
            }
        }
    }
}

public struct ValeurView: View {
    @Binding var valeur:Valeur
    @State var edition = false
    
    public init(_ valeur:Binding<Valeur>){
        _valeur = valeur
    }
    
    public var body: some View  {
        if edition {
            HStack {
                Form {
                    VStack {
                        EstimationView($valeur.acquisition, "acquisition")
                        if valeur.acquisition.checked {
                            EstimationView($valeur.estimation, "estimation")
                            if valeur.estimation.checked {
                                Text("plus-value potentielle : " + valeur.potentiel).padding(.top,10)
                                if let optional : Binding<Estimation> = Binding($valeur.revente) {
                                    EstimationView(optional, "revente")
                                } else {
                                    Button(action:{valeur.revente = Estimation()})
                                    {Text("revendre")}.padding(10)
                                }
                            }
                        }
                    }
                }
                Button(action:{ edition = false })
                {Image(systemName: "checkmark")}
            }
        } else {
            HStack {
                ValeurShow(valeur)
                Button(action:{ edition = true })
                {Image(systemName: "pencil")}
            }
        }
        
    }
}


struct ValeurPreview: View {
    @State var valeur = Valeur()
    
    var body: some View {
        ValeurView($valeur).padding(20).frame(width:600,height:300)
    }
}

#Preview {
    ValeurPreview()
}
