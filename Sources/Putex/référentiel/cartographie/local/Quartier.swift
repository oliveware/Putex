//
//  Quartier.swift
//  Putex
//
//  Created by Herve Crespel on 02/11/2024.
//

struct Quartier: Codable, Identifiable {
    var id:Int?
    
    var nom:String
    // adresse
    var codepostal:String?
    
    var parcelles:[Parcelle] = []

    subscript(_ id:Int) -> Parcelle? {
        var found : Parcelle?
        for parcelle in parcelles {
            if parcelle.id == id {
                found = parcelle
            }
        }
        return found
    }
}


/*
extension Quartier {
    static var seclincentre = Quartier("Seclin centre", ["148"])

 public init(_ nom:String, _ divisions: [String] = []) {
      self.nom = nom
      for div in divisions {
          parcelles.append(Parcelle(div))
      }
  }
  
  mutating func add(_ nom:String) {
      parcelles.append(Parcelle(nom))
  }
  
  mutating func update(_ division : Parcelle) {
      for index in 0..<parcelles.count {
          if parcelles[index].nom == division.nom {
              parcelles[index] = division
          }
      }
 }
}*/
