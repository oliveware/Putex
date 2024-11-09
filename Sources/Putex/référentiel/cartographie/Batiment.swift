//
//  Local.swift
//  Putex
//
//  Created by Herve Crespel on 04/11/2024.
//

struct Batiment {
    var nom: String
    
    // un bâtiment est construit sur une ou plusieurs parcelles
    var parcelleprincipale:LID
    var autresparcelles:[LID] = []
    // un bâtiment réunit un plusieurs locaux recensés dans ces parcelles
    // une maison ou un garage comporte un seul local
    // un immeuble comporte plusieurs locaux
    // les locaux sont décrits dans ces occurences
    
    struct NumVoie: Codable {
        var parcelle:LID
        var voie:String = ""
        var num:String = ""
        init(_ lid:LID) {parcelle = lid}
    }
    // un batiment peut avoir deux adresses
    var numvoie : NumVoie
    var alternumvoie: NumVoie?
    
    var codepostal:String = ""
    
    init(_ nom:String, _ lid:LID) {
        self.nom = nom
        parcelleprincipale = lid
        numvoie = NumVoie(lid)
    }
    
    struct Datadresse {
        var numero = ""
        var voie = ""
        var complement = ""
        var codepostal = ""
        var commune = ""
        var pays = ""
        
        init(_ numvoie:NumVoie, _ nom:String, _ cp:String) {
            let lieu = Lieu(numvoie.parcelle)
            numero = numvoie.num
            voie = numvoie.voie
            complement = nom
            codepostal = cp
            commune = lieu.commune!.nom
            pays = lieu.territoire.nom
        }
    }
    
    public var adresse: Datadresse {
        return Datadresse(numvoie,nom,codepostal)
    }
    public var alternadresse: Datadresse {
        return Datadresse(alternumvoie ?? numvoie,nom,codepostal)
    }
    
  /*  func adresse(_ numvoie:NumVoie) -> (
              numero : String,
              voie : String,
              complement : String,
              codepostal : String,
              commune : String,
              pays : String
    ) {
        let lieu = Lieu(numvoie.parcelle)
        let numero = numvoie.num
        let voie = numvoie.voie
        let complement = nom
        let codepostal = codepostal
        let commune = lieu.commune!.nom
        let pays = lieu.territoire.nom
        return (numero: numero, voie: voie, complement: complement, codepostal: codepostal, commune: commune, pays: pays)

    }*/
}
