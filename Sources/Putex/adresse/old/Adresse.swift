//
//  classes.swift
//  Locations
//
//  Created by Herve Crespel on 02/05/2023.
//

import Foundation
import Putex
//import CoreLocation

var uneadresse = Adresse("67", "rue du 14 juillet","59113","Seclin")

public struct Adresse: Codable, Equatable {
    public static func == (_ a: Adresse, _ b:Adresse) -> Bool {
        a.numero == b.numero &&
        a.voie == b.voie &&
        a.codepostal == b.codepostal &&
        a.commune == b.commune
    }

    var numero = ""
    var voie = ""
    var complement = ""
    var codepostal = ""
    public var commune = ""
    var region = ""
    var pays = ""
    
    public init(_ num:String, _ vn:String, _ cp:String, _ v:String) {
        numero = num
        voie = vn
        codepostal = cp
        commune = v
    }
    
    public init () {
    }
    
    public var isNaN:Bool {
        return voie == "" && commune == "" && pays == ""
    }
    public var astring:String {
        var postale = "\(numero) \(voie)\n"
        if complement != "" {
            postale += "\(complement)\n"
        }
        postale += "\(codepostal) \(commune)"
        return postale
    }
    
    /*
      public init(numero: String, voie : String, complement : String, codepostal : String, commune : String, region:String, pays : String = "") {
          self.numero = numero
          self.voie = voie
          self.complement = complement
          self.codepostal = codepostal
          self.commune = commune
          self.region = region
          // à corriger : rendre contextuel
          self.pays = (voie != "" && commune != "" && pays == "") ? "France" : pays
      }
      
      public init(_ lid:LID, _ local:String?) {
          let adresse = Lieu(lid).adresse
          numero = adresse.numero
          voie = adresse.voie
          complement = adresse.complement
          if local != nil { complement += " " + local!}
          codepostal = adresse.codepostal
          commune = adresse.commune
          pays = adresse.pays
      }*/
    
    /* public var location:CLLocation {
         let geoCoder = CLGeocoder()
         geoCoder.geocodeAddressString(astring) { (placemarks, error) in
             guard
                 let placemarks = placemarks,
                 let location = placemarks.first?.location
             else {
                 // handle no location found
                 return
             }
             return location
             // Use your location
         }
     }*/
}


