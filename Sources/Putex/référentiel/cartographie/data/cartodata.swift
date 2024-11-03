//
//  cartodata.swift
//  Putex
//
//  Created by Herve Crespel on 01/11/2024.
//

let Europe = """
{
    "territoires": [
        {"nom": "France", 
        "regions":[
            {"nom":"Hauts de France",
            "communes":[
                {"nom":"Lille", "quartiers":[]}, 
                {"nom":"Seclin", 
                "quartiers":[
                    {"nom":"Seclin centre", 
                    "parcelles":[
                        {"nom":"148", "voie":"rue du 14 juillet 1789",
                        "batiments":[
                        {"nom":"rue","locaux":[
                            {"nom":"droit"},{"nom":"gauche"},{"nom":"premier"},{"nom":"second"}
                                ]},
                        {"nom":"cour","locaux":[]},
                        {"nom":"grange","locaux":[]}
                        ]
                        }
                        ]
                    }
                ]
                }, 
                {"nom":"Villeneuve d'Ascq", "quartiers":[]}, 
                {"nom":"Hardelot", "quartiers":[]},
                {"nom":"Hauboudin", "quartiers":[]}
                ]
            },
            {"nom": "Normandie",
            "communes":[
                {"nom":"Dieppe", "quartiers":[]}
            ] }, 
            {"nom": "Corse"}, 
            {"nom": "Guyanne"}

         ]
        }
    ]
}
"""
/*
extension Parcelle {
    static var soixantesept = Parcelle("148", [
        "rue", "cour", "grange"
    ])
}

extension Batiment {
    static var rue = Batiment("rue")
    static var cour = Batiment("cour")
    static var grange = Batiment("grange")
}


extension Local {
    static var premier = Local("premier")
    static var second = Local("second")
}
}
"""*/
