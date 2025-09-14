//
//  Fra.swift
//  Putex
//
//  Created by Herve Crespel on 13/09/2025.
//

let France = countries.read("France-cadastre")


let FR = """

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
                    {"id":1,"nom":"Canteleu", "terrains":[
                            {"id":363, "numvoie":{"voie":"avenue Watteau", "num":"12", "codepostal":"59130"}, 
                                "parcelles":[
                                {"id":395, "cadastre":"59328 000 AW 363", "surface":{"nombre":{"entiere":71},"quantité":"surface"}}
                                ]
                            },
                             {"id":395, "numvoie":{"voie":"avenue Hyppolite Peslin", "num":"4", "codepostal":"59130"}, 
                                "parcelles":[
                                {"id":395, "cadastre":"59328 000 AW 395", "surface":{"nombre":{"entiere":127},"quantité":"surface"}}
                                ]
                            },
                            {"id":15, "numvoie":{"voie":"avenue de Soubise", "num":"11", "codepostal":"59130"}, 
                                "parcelles":[
                                    {"id":570, "cadastre":"59328 000 AW 570", "surface":{"nombre":{"entiere":24},"quantité":"surface"}}, 
                                    {"id":571, "cadastre":"59328 000 AW 571", "surface":{"nombre":{"entiere":13},"quantité":"surface"}}, 
                                    {"id":572, "cadastre":"59328 000 AW 572", "surface":{"nombre":{"entiere":13},"quantité":"surface"}}
                                ]
                            },
                            {"id":16, "numvoie":{"voie":"avenue Watteau", "num":"1","codepostal":"59130"}, 
                                "parcelles":[
                                    {"id":583, "cadastre":"59328 000 AW 583", "surface":{"nombre":{"entiere":14},"quantité":"surface"}}, 
                                    {"id":584, "cadastre":"59328 000 AW 584", "surface":{"nombre":{"entiere":11},"quantité":"surface"}}, 
                                    {"id":585, "cadastre":"59328 000 AW 585", "surface":{"nombre":{"entiere":11},"quantité":"surface"}}, 
                                    {"id":586, "cadastre":"59328 000 AW 586", "surface":{"nombre":{"entiere":11},"quantité":"surface"}}, 
                                    {"id":587, "cadastre":"59328 000 AW 587", "surface":{"nombre":{"entiere":11},"quantité":"surface"}}, 
                                    {"id":588, "cadastre":"59328 000 AW 588", "surface":{"nombre":{"entiere":84},"quantité":"surface"}}
                                ]
                            },
                            {"id":17, "numvoie":{"voie":"avenue Watteau", "num":"1","codepostal":"59130"}, 
                                "parcelles":[
                                    {"id":580, "cadastre":"59328 000 AW 580", "surface":{"nombre":{"entiere":14},"quantité":"surface"}}, 
                                    {"id":581, "cadastre":"59328 000 AW 581", "surface":{"nombre":{"entiere":14},"quantité":"surface"}}, 
                                    {"id":582, "cadastre":"59328 000 AW 582", "surface":{"nombre":{"entiere":14},"quantité":"surface"}}
                                ]
                            },
                            {"id":18, "numvoie":{"voie":"avenue Watteau", "num":"1", "codepostal":"59130"}, 
                                "parcelles":[
                                    {"id":578, "cadastre":"59328 000 AW 578", "surface":{"nombre":{"entiere":13},"quantité":"surface"}}, 
                                    {"id":579, "cadastre":"59328 000 AW 579", "surface":{"nombre":{"entiere":13},"quantité":"surface"}} 
                                ]
                            },
                            {"id":19, "numvoie":{"voie":"avenue Watteau", "num":"1","codepostal":"59130"}, 
                                "parcelles":[
                                    {"id":573, "cadastre":"59328 000 AW 573", "surface":{"nombre":{"entiere":17},"quantité":"surface"}}, 
                                    {"id":574, "cadastre":"59328 000 AW 574", "surface":{"nombre":{"entiere":15},"quantité":"surface"}}, 
                                    {"id":575, "cadastre":"59328 000 AW 575", "surface":{"nombre":{"entiere":16},"quantité":"surface"}}, 
                                    {"id":576, "cadastre":"59328 000 AW 576", "surface":{"nombre":{"entiere":13},"quantité":"surface"}}, 
                                    {"id":577, "cadastre":"59328 000 AW 577", "surface":{"nombre":{"entiere":15},"quantité":"surface"}}
                                ]
                            }
                            ]
                        }
                    ]
                }, 
                {"id":2,"nom":"Lille", "quartiers":[
                        {"id":1,"nom":"Vauban-Esquermes", 
                            "terrains":[
                                {"id":336, "numvoie":{"voie":"rue Bonte-Pollet", "num":"42","codepostal":"59000"},
                                "parcelles":[{"id":336, "cadastre":"59350 000 IY 336", "surface":{"nombre":{"entiere":19324},"quantité":"surface"}}]}
                            ]
                        }
                    ]
                },
                {"id":3,"nom":"Amiens", "quartiers":[]}, 
                {"id":4,"nom":"Roubaix", "quartiers":[]}, 
                {"id":5,"nom":"Seclin", "quartiers":[
                     {"id":1,"nom":"Centre 1", "terrains":[
                        {"id":11, "numvoie":{"voie":"rue Maurice Bouchery", "num":"130","codepostal":"59113"},
                        "parcelles":[{"id":110, "cadastre":"59560 000 AS 110", "surface":{"nombre":{"entiere":1592},"quantité":"surface"}}]},
                        {"id":12, "numvoie":{"voie":"rue Maurice Bouchery", "num":"130 bis","codepostal":"59113"},
                        "parcelles":[{"id":109, "cadastre":"59560 000 AS 109", "surface":{"nombre":{"entiere":331},"quantité":"surface"}}]},
                        {"id":13, "numvoie":{"voie":"rue Maurice Bouchery", "num":"130 ter","codepostal":"59113"},
                        "parcelles":[{"id":107, "cadastre":"59560 000 AS 107", "surface":{"nombre":{"entiere":432},"quantité":"surface"}}]},
                        {"id":26, "numvoie":{"voie":"rue JB Lebas", "num":"6","codepostal":"59113"},
                        "parcelles":[{"id":61, "cadastre":"59560 000 AS 344", "surface":{"nombre":{"entiere":91},"quantité":"surface"}}]},
                        {"id":24, "numvoie":{"voie":"rue JB Lebas", "num":"4","codepostal":"59113"},
                        "parcelles":[{"id":63, "cadastre":"59560 000 AS 343", "surface":{"nombre":{"entiere":91},"quantité":"surface"}}]}
                        ]
                    },
                    {"id":2,"nom":"Centre 2", "terrains":[
                        {"id":148, "numvoie":{"voie":"rue du 14 juillet 1789", "num":"67","codepostal":"59113"},
                        "parcelles":[{"id":148, "cadastre":"59560 000 AM 148", "surface":{"nombre":{"entiere":662},"quantité":"surface"}}]},
                        {"id":251, "numvoie":{"voie":"rue du 14 juillet 1789", "num":"59","codepostal":"59113"},
                        "parcelles":[{"id":251, "cadastre":"59560 000 AM 251", "surface":{"nombre":{"entiere":118},"quantité":"surface"}}]},
                        {"id":252, "numvoie":{"voie":"rue du 14 juillet 1789", "num":"61 bis","codepostal":"59113"},
                        "parcelles":[{"id":252, "cadastre":"59560 000 AM 252", "surface":{"nombre":{"entiere":73},"quantité":"surface"}}]},
                        {"id":253, "numvoie":{"voie":"rue du 14 juillet 1789", "num":"61","codepostal":"59113"},
                        "parcelles":[{"id":253, "cadastre":"59560 000 AM 253", "surface":{"nombre":{"entiere":143},"quantité":"surface"}}]},
                        {"id":254, "numvoie":{"voie":"rue du 14 juillet 1789", "num":"61 bis","codepostal":"59113"},
                        "parcelles":[{"id":254, "cadastre":"59560 000 AM 254", "surface":{"nombre":{"entiere":273},"quantité":"surface"}}]},
                        {"id":103, "numvoie":{"voie":"rue des boulets", "num":"6", "codepostal":"59113"},
                        "parcelles":[{"id":103, "cadastre":"59560 000 AP 103", "surface":{"nombre":{"entiere":159},"quantité":"surface"}}]}
                        ]
                    },
                    {"id":3,"nom":"Burgault Mouchonnière 1", "terrains":[]},
                    {"id":4,"nom":"Burgault Mouchonnière 2a", "terrains":[]},
                    {"id":5,"nom":"Burgault Mouchonnière 2b", "terrains":[]}
                    ]
                }, 
                {"id":6,"nom":"Villeneuve d'Ascq", "quartiers":[
                        {"id":1,"nom":"Triolo", "terrains":[
                            {"id":139, "numvoie":{"voie":"allée du Ternois", "num":"3","codepostal": "59950"},
                            "parcelles":[{"id":139, "cadastre":"59009 000 NS 139", "surface":{"nombre":{"entiere":242},"quantité":"surface"}}]}
                            ]
                        },
                        {"id":2, "nom":"Hotel de ville", "terrains":[]},
                        {"id":4, "nom":"Chateau", "terrains":[]},
                        {"id":5, "nom":"Cousinerie", "terrains":[]}
                    ]
                }, 
                {"id":7,"nom":"Hardelot", 
                    "quartiers":[
                        {"id":1, "nom":"plage", 
                            "terrains":[
                                {"id":48, "numvoie":{"voie":"", "num":"","codepostal":"62"},
                                "parcelles":[{"id":48, "surface":{"nombre":{"decimales":""},"quantité":"surface"}}]}
                            ]
                        }
                    ]
                },
                {"id":8,"nom":"Haubourdin", "quartiers":[
                        {"id":1, "nom":"canal", "terrains":[
                                {"id":21, "numvoie":{"voie":"chemin de halage moulin rouge", "num":"8","codepostal":"59125"},
                                "parcelles":[{"id":22, "cadastre":"59286 000 AN 21", "surface":{"nombre":{"entiere":64},"quantité":"surface"}}]},
                                {"id":22, "numvoie":{"voie":"chemin de halage moulin rouge", "num":"8 bis","codepostal":"59125"},
                                "autrenumvoie":{"voie":"chemin de halage moulin rouge", "num":"10","codepostal":"59125"},
                                "parcelles":[{"id":22, "cadastre":"59286 000 AN 22", "surface":{"nombre":{"entiere":67},"quantité":"surface"}}]}
                            ]
                        },
                        {"id":2, "nom":"rive droite", "terrains":[]}
                    ]
                },
                {"id":9,"nom":"Bray-Dunes", "quartiers":[
                        {"id":1, "nom":"plage", "terrains":[
                                {"id":1, "numvoie":{"voie":"boulevard Georges Pompidou", "num":"390","codepostal":"59131"},
                                "parcelles":[{"id":465, "cadastre":"59107 000 AB 465", "surface":{"nombre":{"entiere":169},"quantité":"surface"}}]}
                            ]
                        }
                    ]
                },
                {"id":10,"nom":"Lomme", "tutelle":"Lille", "quartiers":[
                        {"id":1, "nom":"Bourg", "terrains":[]},
                        {"id":5, "nom":"Mitterie", "terrains":[]}
                        ]
                }
                ]
            },
        {"id":13, "nom":"Île-de-France",
            "communes":[
                {"id":1,"nom":"Paris", "quartiers":[ 
                    {"id":11, "nom":"10 ième", "terrains":[
                        {"id":60, "numvoie":{"voie":"avenue Claude Vellefaux", "num":"9","codepostal":"75010"},
                        "parcelles":[
                            {"id":60, "cadastre":"75056 110 BM 60", "surface":{"nombre":{"entiere":1128},"quantité":"surface"}},
                            {"id":62, "cadastre":"75056 110 BM 62", "surface":{"nombre":{"entiere":192},"quantité":"surface"}},
                            {"id":63, "cadastre":"75056 110 BM 63", "surface":{"nombre":{"entiere":449},"quantité":"surface"}}
                        ]}
                    ]
                    }
                    ]
                }, 
                {"id":2,"nom":"Boulogne-Billancourt", "quartiers":[]},
                {"id":3,"nom":"Saint-Denis", "quartiers":[]}
            ]
        },
        {"id":8, "nom":"Normandie",
            "communes":[
                {"id":1,"nom":"Le Havre", "quartiers":[]}, 
                {"id":2,"nom":"Rouen", "quartiers":[]},
                {"id":3,"nom":"Caen", "quartiers":[]},
                {"id":4,"nom":"Dieppe", "quartiers":[
                    {"id":1,"nom":"Pollet", "terrains":[
                        {"id":1, "numvoie":{"voie":"Grande rue du Pollet", "num":"2", "codepostal":"76370"}, 
                            "parcelles":[
                            {"id":277, "cadastre":"000 A0 277", "surface":{"nombre":{"entiere":321},"quantité":"surface"}}
                            ]
                        },
                        {"id":2, "numvoie":{"voie":"rue Balidar", "num":"16", "codepostal":"76370"}, 
                            "parcelles":[
                            {"id":1, "cadastre":"000 AM 1", "surface":{"nombre":{"entiere":538},"quantité":"surface"}}
                            ]
                        }
                        ]
                    },
                    {"id":3,"nom":"Saint-Pierre", "terrains":[]},
                    {"id":4,"nom":"Caude côte", "terrains":[]}
                ]}
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
                {"id":10,"nom":"Pornic", "quartiers":[
                    {"id":11, "nom":"Sainte-Marie", "terrains":[
                        {"id":100, "numvoie":{"voie":"corniche du Porteau", "num":"1","codepostal":"44210"},
                            "parcelles":[{"id":100, "cadastre":"44131 177 BL 240", "surface":{"nombre":{"entiere":452},"quantité":"surface"}}]
                        },
                        {"id":101, "numvoie":{"voie":"rue des bougrenets", "num":"65","codepostal":"44210"},
                            "parcelles":[{"id":101, "cadastre":"44131 177 BP 331", "surface":{"nombre":{"entiere":835},"quantité":"surface"}}]
                        },
                        {"id":103, "numvoie":{"voie":"résidence des vignes", "num":"9","codepostal":"44210"},
                            "parcelles":[{"id":101, "cadastre":"44131 177 BV 101", "surface":{"nombre":{"entiere":660},"quantité":"surface"}}]
                        }
                        ]
                    }
                    ]
                },
                {"id":11,"nom":"Saint-Michel-Chef-Chef", "quartiers":[
                    {"id":11, "nom":"e", "terrains":[
                        {"id":126, "numvoie":{"voie":"route de la source", "num":"21","codepostal":"44730"},
                            "parcelles":[{"id":126, "cadastre":"44182 000 BP 126", "surface":{"nombre":{"entiere":1772},"quantité":"surface"}}]
                        }
                        ]
                    }
                    ]
                },
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
