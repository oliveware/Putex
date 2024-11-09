//
//  File.swift
//  
//
//  Created by Herve Crespel on 03/05/2024.
//

import Foundation

struct Continent : Codable {
  //  static var monde = ["Europe":Continent(Europe)]
    
    var nom = ""
    var territoires : [Territoire] = []
    
    init(_ nom:String, _ lands: [Territoire]) {
        self.nom = nom
        territoires = lands
    }
    
    init(_ json:String) {
        let jsonData = json.data(using: .utf8)!
        let carto = try! JSONDecoder().decode(Continent.self, from: jsonData)
        self = carto
    }
    
    func insert(_ lieu: Lieu){
        
    }
    
    subscript(_ index:Int) -> Territoire {
        territoires[index]
    }
    
    
    
   /* func parcelle(_ lid:Lid) -> Parcelle {
        let territoire = territoires[lid.territoire]
        let region = territoire.regions[lid.region]
        let commune = region.communes[lid.commune]
        let quartier = commune.quartiers[lid.quartier]
        return quartier.parcelles[lid.parcelle]
    }*/
}

/*
extension Cartographie {
    static var europe = Cartographie (
        [Territoire.france,
         ]
    )
}*/





