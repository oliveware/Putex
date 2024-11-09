//
//  cartodata.swift
//  Putex
//
//  Created by Herve Crespel on 01/11/2024.
//

let Europe = """
{   "nom":"Europe",
    "territoires": [
        {"id":1, "nom": "France", 
        "regions":[
            {"id":1, "nom":"Auvergne-Rhône-Alpes",
                "communes":[
                    {"id":101,"nom":"Lyon", "quartiers":[]}, 
                    {"id":102,"nom":"Saint-Étienne", "quartiers":[]},
                    {"id":103,"nom":"Grenoble", "quartiers":[]}
                ]
            },
            {"id":2, "nom":"Bourgogne-Franche-Comté",
                "communes":[
                    {"id":201,"nom":"Dijon", "quartiers":[]}, 
                    {"id":202,"nom":"Besançon", "quartiers":[]},
                    {"id":203,"nom":"Belfort", "quartiers":[]}
                ]
            },
            {"id":3, "nom":"Bretagne",
                "communes":[
                    {"id":301,"nom":"Rennes", "quartiers":[]}, 
                    {"id":302,"nom":"Brest", "quartiers":[]},
                    {"id":303,"nom":"Quimper", "quartiers":[]}
                ]
            },
            {"id":4, "nom":"Centre-Val de Loire",
                "communes":[
                    {"id":401,"nom":"Tours", "quartiers":[]}, 
                    {"id":402,"nom":"Orléans", "quartiers":[]},
                    {"id":403,"nom":"Bourges", "quartiers":[]}
                ]
            },
            {"id":5, "nom":"Corse",
                "communes":[
                    {"id":501,"nom":"Ajaccio", "quartiers":[]}, 
                    {"id":502,"nom":"Bastia", "quartiers":[]},
                    {"id":503,"nom":"Porto-Vecchio", "quartiers":[]}
                ]
            },
            {"id":6, "nom":"Grand Est",
                "communes":[
                    {"id":601,"nom":"Strasbourg", "quartiers":[]}, 
                    {"id":602,"nom":"Reims", "quartiers":[]},
                    {"id":603,"nom":"Metz", "quartiers":[]}
                ]
            },
            {"id":7, "nom":"Hauts de France",
            "communes":[
                {"id":700,"nom":"Lambersart", "quartiers":[
                    {"id":1,"nom":"bois blanc", 
                    "parcelles":[
                        {"id":395,"nom":"395", "adresse":{"voie":"avenue Hyppolite Peslin", "num":"4"},
                        "batiments":[
                        {"nom":"maison","locaux":[]}]},
                        {"id":570,"nom":"570", "adresse":{"voie":"avenue de Soubise", "num":"11"},
                        "batiments":[
                        {"nom":"garage","locaux":[{"nom":"grand"}]}]},
                        {"id":571,"nom":"571", "adresse":{"voie":"avenue de Soubise", "num":"11"},
                        "batiments":[
                        {"nom":"garage","locaux":[{"nom":"milieu"}]}]},
                        {"id":572,"nom":"572", "adresse":{"voie":"avenue de Soubise", "num":"11"},
                        "batiments":[
                        {"nom":"garage","locaux":[{"nom":"droit"}]}]},
                        {"id":581,"nom":"581", "adresse":{"voie":"avenue Watteau", "num":"1"},
                        "batiments":[
                        {"nom":"garage","locaux":[{"nom":"1"}]}]},
                        {"id":582,"nom":"582", "adresse":{"voie":"avenue Watteau", "num":"1"},
                        "batiments":[
                        {"nom":"garage","locaux":[{"nom":"2"}]}]},
                        {"id":583,"nom":"583", "adresse":{"voie":"avenue Watteau", "num":"1"},
                        "batiments":[
                        {"nom":"garage","locaux":[{"nom":"3"}]}]},
                        {"id":584,"nom":"584", "adresse":{"voie":"avenue Watteau", "num":"1"},
                        "batiments":[
                        {"nom":"garage","locaux":[{"nom":"4"}]}]},
                        {"id":585,"nom":"585", "adresse":{"voie":"avenue Watteau", "num":"1"},
                        "batiments":[
                        {"nom":"garage","locaux":[{"nom":"5"}]}]},
                        {"id":586,"nom":"586", "adresse":{"voie":"avenue Watteau", "num":"1"},
                        "batiments":[
                        {"nom":"garage","locaux":[{"nom":"6"}]}]},
                        {"id":587,"nom":"587", "adresse":{"voie":"avenue Watteau", "num":"1"},
                        "batiments":[
                        {"nom":"garage","locaux":[{"nom":"7"}]}]},
                        {"id":588,"nom":"588", "adresse":{"voie":"avenue Watteau", "num":"1"},
                        "batiments":[
                        {"nom":"cour garages","locaux":[]}]}
                    ]}
                ]}, 
                {"id":701,"nom":"Lille", "quartiers":[]}, 
                {"id":702,"nom":"Amiens", "quartiers":[]}, 
                {"id":703,"nom":"Roubaix", "quartiers":[]}, 
                {"id":704,"nom":"Seclin", 
                "quartiers":[
                    {"id":1,"nom":"Seclin centre", 
                    "parcelles":[
                        {"id":148,"nom":"148", "adresse":{"voie":"rue du 14 juillet 1789", "num":"67"},
                        "batiments":[
                        {"nom":"rue","locaux":[
                            {"nom":"droit"},{"nom":"gauche"},{"nom":"premier"},{"nom":"second"}
                                ]},
                        {"nom":"cour","locaux":[]},
                        {"nom":"grange","locaux":[]}
                        ]
                        },
                        {"id":254,"nom":"254", "adresse":{"voie":"rue du 14 juillet 1789", "num":"61 bis"},
                        "batiments":[
                        {"nom":"apartements","locaux":[
                            {"nom":"rue"},{"nom":"cour"}]},
                        {"nom":"garages","locaux":[
                            {"nom":"1"},{"nom":"2"},{"nom":"3"},{"nom":"4"},{"nom":"5"}]}
                        ]
                        },
                        {"id":252,"nom":"252", "adresse":{"voie":"rue du 14 juillet 1789", "num":"61 bis"},
                        "batiments":[
                        {"nom":"garages","locaux":[
                            {"nom":"6"},{"nom":"7"}]}
                        ]
                        }
                        ]
                    }
                ]
                }, 
                {"id":705,"nom":"Villeneuve d'Ascq", 
                    "quartiers":[
                        {"nom":"Triolo", 
                        "parcelles":[
                            {"id":139,"nom":"139", "adresse":{"voie":"allée du Ternois", "num":"3"},
                            "batiments":[
                            {"nom":"maison","locaux":[
                                {"nom":"maison"}
                            ]
                            }
                            ]
                        }
                        ]
                        }
                    ]
                }, 
                {"id":706,"nom":"Hardelot", 
                    "quartiers":[
                        {"nom":"plage", 
                            "parcelles":[
                                {"nom":"48", "adresse":{"voie":"", "num":""},
                                "batiments":[
                                {"nom":"La Réale","locaux":[ {"nom":"R 6"} ]
                                }
                            ]
                            }
                            ]
                        }
                    ]
                },
                {"id":707,"nom":"Hauboudin", "quartiers":[]},
                {"id":708,"nom":"Bray-Dunes", "quartiers":[
                        {"nom":"plage", 
                            "parcelles":[
                                {"nom":"33", "adresse":{"voie":"boulevard Georges Pompidou", "num":"327"},
                                "batiments":[
                                {"nom":"maison","locaux":[ {"nom":"maison"} ]
                                }
                            ]
                            }
                            ]
                        }
]},
                {"id":709,"nom":"Lomme", "quartiers":[]}
                ]
            },
        {"id":13, "nom":"Île-de-France",
            "communes":[
                {"id":1301,"nom":"Paris", "quartiers":[]}, 
                {"id":1302,"nom":"Boulogne-Billancourt", "quartiers":[]},
                {"id":1303,"nom":"Saint-Denis", "quartiers":[]}
            ]
        },
            {"id":8, "nom":"Normandie",
                "communes":[
                    {"id":801,"nom":"Le Havre", "quartiers":[]}, 
                    {"id":802,"nom":"Rouen", "quartiers":[]},
                    {"id":803,"nom":"Caen", "quartiers":[]},
                    {"id":804,"nom":"Dieppe", "quartiers":[]}
                ]
            },
            {"id":9, "nom":"Nouvelle-Aquitaine",
                "communes":[
                    {"id":901,"nom":"Bordeaux", "quartiers":[]}, 
                    {"id":902,"nom":"Limoges", "quartiers":[]},
                    {"id":903,"nom":"Poitiers", "quartiers":[]}
                ]
            },
            {"id":10, "nom":"Occitanie",
                "communes":[
                    {"id":151,"nom":"Toulouse", "quartiers":[]}, 
                    {"id":152,"nom":"Montpellier", "quartiers":[]},
                    {"id":153,"nom":"Nimes", "quartiers":[]}
                ]
            },
            {"id":11, "nom":"Pays de la Loire",
                "communes":[
                    {"id":161,"nom":"Nantes", "quartiers":[]}, 
                    {"id":162,"nom":"Angers", "quartiers":[]},
                    {"id":163,"nom":"Le Mans", "quartiers":[]}
                ]
            },
            {"id":12, "nom":"Provence-Alpes-Côte d'Azur",
                "communes":[
                    {"id":171,"nom":"Marseille", "quartiers":[]}, 
                    {"id":172,"nom":"Nice", "quartiers":[]},
                    {"id":173,"nom":"Toulon", "quartiers":[]}
                ]
            },
           
            {"id":14, "nom": "Guyanne",
            "communes":[
                {"id":1401,"nom":"Cayenne", "quartiers":[]}
            ]}

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
