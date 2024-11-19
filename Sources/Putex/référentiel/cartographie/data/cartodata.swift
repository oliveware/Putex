//
//  cartodata.swift
//  Putex
//
//  Created by Herve Crespel on 01/11/2024.
//

let Europe = """

{   "nom":"Europe",
    "territoires": [\(France)]
}
"""

let France = """
{"id":1, "nom":"France",
        "regions":[
            {"id":1, "nom":"Auvergne-Rhône-Alpes",
                "communes":[
                    {"id":1,"nom":"Lyon", "quartiers":[]}, 
                    {"id":2,"nom":"Saint-Étienne", "quartiers":[]},
                    {"id":3,"nom":"Grenoble", "quartiers":[]}
                ]
            },
            {"id":2, "nom":"Bourgogne-Franche-Comté",
                "communes":[
                    {"id":1,"nom":"Dijon", "quartiers":[]}, 
                    {"id":2,"nom":"Besançon", "quartiers":[]},
                    {"id":3,"nom":"Belfort", "quartiers":[]}
                ]
            },
            {"id":3, "nom":"Bretagne",
                "communes":[
                    {"id":1,"nom":"Rennes", "quartiers":[]}, 
                    {"id":2,"nom":"Brest", "quartiers":[]},
                    {"id":3,"nom":"Quimper", "quartiers":[]}
                ]
            },
            {"id":4, "nom":"Centre-Val de Loire",
                "communes":[
                    {"id":1,"nom":"Tours", "quartiers":[]}, 
                    {"id":2,"nom":"Orléans", "quartiers":[]},
                    {"id":3,"nom":"Bourges", "quartiers":[]}
                ]
            },
            {"id":5, "nom":"Corse",
                "communes":[
                    {"id":1,"nom":"Ajaccio", "quartiers":[]}, 
                    {"id":2,"nom":"Bastia", "quartiers":[]},
                    {"id":3,"nom":"Porto-Vecchio", "quartiers":[]}
                ]
            },
            {"id":6, "nom":"Grand Est",
                "communes":[
                    {"id":1,"nom":"Strasbourg", "quartiers":[]}, 
                    {"id":2,"nom":"Reims", "quartiers":[]},
                    {"id":3,"nom":"Metz", "quartiers":[]}
                ]
            },
            {"id":7, "nom":"Hauts de France",
            "communes":[
                {"id":1,"nom":"Lambersart", "quartiers":[
                    {"id":1,"nom":"bois blanc", 
                    "terrains":[
                        {"id":395, "numvoie":{"voie":"avenue Hyppolite Peslin", "num":"4","codepostal":"59130"}, 
                        "parcelles":[{"id":395}]},
                        {"id":57, "numvoie":{"voie":"avenue de Soubise", "num":"11","codepostal":"59130"}, 
                            "parcelles":[{"id":570}, {"id":571}, {"id":572}
                            ]
                        },
                        {"id":58, "numvoie":{"voie":"avenue Watteau", "num":"1","codepostal":"59130"}, 
                            "parcelles":[{"id":580}, {"id":581}, {"id":582}, {"id":583}, {"id":584}, {"id":585}, {"id":586}, {"id":587}, {"id":588}]}
                            ]
                        }
                    ]
                }, 
                {"id":2,"nom":"Lille", "quartiers":[
                    {"id":1,"nom":"port", 
                        "terrains":[
                            {"id":339, "numvoie":{"voie":"rue Bonte-Pollet", "num":"3","codepostal":"59000"},
                            "parcelles":[{"id":339}]}
                        ]
                        }
                    ] 
                },
                {"id":3,"nom":"Amiens", "quartiers":[]}, 
                {"id":4,"nom":"Roubaix", "quartiers":[]}, 
                {"id":5,"nom":"Seclin", 
                "quartiers":[
                    {"id":1,"nom":"Seclin centre", 
                    "terrains":[
                        {"id":148, "numvoie":{"voie":"rue du 14 juillet 1789", "num":"67","codepostal":"59113"},
                        "parcelles":[{"id":148}]},
                        {"id":254, "numvoie":{"voie":"rue du 14 juillet 1789", "num":"61 bis","codepostal":"59113"},
                        "parcelles":[{"id":254}]},
                        {"id":252, "numvoie":{"voie":"rue du 14 juillet 1789", "num":"61 bis","codepostal":"59113"},
                        "parcelles":[{"id":252}]},
                        {"id":61, "numvoie":{"voie":"rue JB Lebas", "num":"61","codepostal":"59113"},
                        "parcelles":[{"id":61}]},
                        {"id":63, "numvoie":{"voie":"rue JB Lebas", "num":"63","codepostal":"59113"},
                        "parcelles":[{"id":63}]}
                        ]
                    }
                ]
                }, 
                {"id":6,"nom":"Villeneuve d'Ascq", 
                    "quartiers":[
                        {"id":1,"nom":"Triolo", 
                        "terrains":[
                            {"id":139, "numvoie":{"voie":"allée du Ternois", "num":"3","codepostal":"59950"},
                            "parcelles":[{"id":139}]}
                        ]
                        }
                    ]
                }, 
                {"id":7,"nom":"Hardelot", 
                    "quartiers":[
                        {"id":1, "nom":"plage", 
                            "terrains":[
                                {"id":48, "numvoie":{"voie":"", "num":"","codepostal":"62"},
                                "parcelles":[{"id":48}]}
                            ]
                        }
                    ]
                },
                {"id":8,"nom":"Hauboudin", "quartiers":[
                        {"id":1, "nom":"canal", 
                            "terrains":[
                                {"id":98, "numvoie":{"voie":"chemin de halage", "num":"8","codepostal":"59125"},
                                "parcelles":[{"id":98}]}
                            ]
                        }
]},
                {"id":9,"nom":"Bray-Dunes", "quartiers":[
                        {"id":1, "nom":"plage", 
                            "terrains":[
                                {"id":33, "numvoie":{"voie":"boulevard Georges Pompidou", "num":"327","codepostal":"59131"},
                                "parcelles":[{"id":148}]}
                            ]
                        }
                    ]},
                {"id":10,"nom":"Lomme", "quartiers":[]}
                ]
            },
        {"id":13, "nom":"Île-de-France",
            "communes":[
                {"id":1,"nom":"Paris", "quartiers":[ 
                    {"id":11, "nom":"11 ième", 
                            "terrains":[
                                {"id":60, "numvoie":{"voie":"avenue Claude Vellefaux", "num":"9","codepostal":"75010"},
                                "parcelles":[{"id":60}]}
                            ]
                        }]}, 
                {"id":2,"nom":"Boulogne-Billancourt", "quartiers":[]},
                {"id":3,"nom":"Saint-Denis", "quartiers":[]}
            ]
        },
        {"id":8, "nom":"Normandie",
            "communes":[
                {"id":1,"nom":"Le Havre", "quartiers":[]}, 
                {"id":2,"nom":"Rouen", "quartiers":[]},
                {"id":3,"nom":"Caen", "quartiers":[]},
                {"id":4,"nom":"Dieppe", "quartiers":[]}
            ]
        },
        {"id":9, "nom":"Nouvelle-Aquitaine",
            "communes":[
                {"id":1,"nom":"Bordeaux", "quartiers":[]}, 
                {"id":2,"nom":"Limoges", "quartiers":[]},
                {"id":3,"nom":"Poitiers", "quartiers":[]}
            ]
        },
        {"id":10, "nom":"Occitanie",
            "communes":[
                {"id":1,"nom":"Toulouse", "quartiers":[]}, 
                {"id":2,"nom":"Montpellier", "quartiers":[]},
                {"id":3,"nom":"Nimes", "quartiers":[]}
            ]
        },
        {"id":11, "nom":"Pays de la Loire",
            "communes":[
                {"id":1,"nom":"Nantes", "quartiers":[]}, 
                {"id":2,"nom":"Angers", "quartiers":[]},
                {"id":3,"nom":"Le Mans", "quartiers":[]}
            ]
        },
        {"id":12, "nom":"Provence-Alpes-Côte d'Azur",
            "communes":[
                {"id":1,"nom":"Marseille", "quartiers":[]}, 
                {"id":2,"nom":"Nice", "quartiers":[]},
                {"id":3,"nom":"Toulon", "quartiers":[]}
            ]
        },
        
        {"id":14, "nom": "Guyanne",
            "communes":[
                {"id":1,"nom":"Cayenne", "quartiers":[]}
            ]
        }
    ]     
}
"""
