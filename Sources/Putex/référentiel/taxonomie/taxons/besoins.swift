//
//  sample data.swift
//  Taxonomie
//
//  Created by Herve Crespel on 06/07/2025.
//


public let besoins = """
{"items" : [
    {"id":1, "nom":"nourriture", "one": [
        {"id":1, "nom":"animale", "two":[
            {"id":1,"nom":"laitage", "three":[
                {"id":1,"nom":"lait","four":[
                    {"id":1,"nom":"frais","five":[]},
                    {"id":2,"nom":"caillé","five":[]}
                    ]
                },
                {"id":2,"nom":"yaourt","four":[
                    {"id":1,"nom":"nature","five":[]},
                    {"id":2,"nom":"aromatisé","five":[]}
                    ]
                }
                ]
            },
            {"id":2,"nom":"fromage", "three":[
                {"id":1,"nom":"frais","four":[
                    {"id":1,"nom":"faisselle","five":[]},
                    {"id":2,"nom":"fromage blanc","five":[]},
                    {"id":3,"nom":"mozarella","five":[]},
                    {"id":4,"nom":"féta","five":[]},
                    {"id":5,"nom":"chèvre frais","five":[]},
                    {"id":6,"nom":"Saint-Marcellin","five":[]},
                    {"id":7,"nom":"Saint-Félicien","five":[]}
                    ]
                },
                {"id":2,"nom":"pâte molle","four":[
                    {"id":1,"nom":"croûte fleurie","five":[
                        {"id":1,"nom":"Brie de Meaux"},
                        {"id":2,"nom":"Brie de Melun"},
                        {"id":3,"nom":"Brillat Savarin"},
                        {"id":4,"nom":"Brillat Savarin truffoné"},
                        {"id":5,"nom":"Camembert de Normandie"},
                        {"id":6,"nom":"Chaource"},
                        {"id":7,"nom":"Coulommiers"},
                        {"id":8,"nom":"Jolirond"},
                        {"id":9,"nom":"Neufchâtel"},
                        {"id":10,"nom":"Pierre Blanche"}
                        ]
                    },
                    {"id":1,"nom":"croûte lavée","five":[
                        {"id":1,"nom":"Bergues torchon"},
                        {"id":2,"nom":"Carré du Vinage"},
                        {"id":3,"nom":"Curé nantais"},
                        {"id":4,"nom":"Langres"},
                        {"id":5,"nom":"Livarot"},
                        {"id":6,"nom":"Maroilles"},
                        {"id":7,"nom":"Mimolette"},
                        {"id":8,"nom":"Mont d'or"},
                        {"id":9,"nom":"Munster"},
                        {"id":10,"nom":"Pont l'Evêque"},
                        {"id":9,"nom":"Soumaintrain"},
                        {"id":10,"nom":"Tallegio"},
                        {"id":10,"nom":"Vieux Lille"}
                    ]}
                    ]
                },
                {"id":3,"nom":"pâte persillée","four":[
                        {"id":1,"nom":"Roquefort" ,"five":[]},
                        {"id":2,"nom":"Bleu" ,"five":[]},
                        {"id":3,"nom":"Fourme" ,"five":[]},
                        {"id":4,"nom":"Gorgonzola" ,"five":[]},
                        {"id":5,"nom":"Stilton" ,"five":[]},
                        {"id":9,"nom":"Amish Blue" ,"five":[]}
                    ]
                },
                {"id":4,"nom":"pâte préssée","four":[
                    {"id":1,"nom":"cuite","five":[
                        {"id":1,"nom":"Abondance"},
                        {"id":2,"nom":"Beaufort"},
                        {"id":3,"nom":"Gruyère suisse d'alpage"},
                        {"id":4,"nom":"Comté"},
                        {"id":5,"nom":"Etivaz"},
                        {"id":6,"nom":"Pecorino"},
                        {"id":7,"nom":"Parmesan"}
                    ]},
                    {"id":2,"nom":"non cuite","five":[
                        {"id":1,"nom":"Bethmale"},
                        {"id":2,"nom":"Cantal"},
                        {"id":3,"nom":"Cheddar"},
                        {"id":4,"nom":"Fontina"},
                        {"id":5,"nom":"Gouda"},
                        {"id":6,"nom":"Luzenac"},
                        {"id":7,"nom":"Mimolette"},
                        {"id":8,"nom":"Morbier"},
                        {"id":9,"nom":"Raclette fermière"},
                        {"id":10,"nom":"Reblochon"},
                        {"id":11,"nom":"Saint-Nectaire"},
                        {"id":12,"nom":"Tomme"}
                    ]}
                    ]
                },
                {"id":5,"nom":"chèvre","four":[
                    {"id":1,"nom":"Chabichou","five":[]},
                    {"id":2,"nom":"Anneau du Vic Bilh","five":[]},
                    {"id":3,"nom":"Bichonnet","five":[]},
                    {"id":4,"nom":"Briquette","five":[]},
                    {"id":5,"nom":"Charolais","five":[]},
                    {"id":6,"nom":"Cosne du Morvan","five":[]},
                    {"id":7,"nom":"Crottin de Chavignol","five":[]},
                    {"id":8,"nom":"Crottin de Cocumont","five":[]},
                    {"id":11,"nom":"Pélardon","five":[]},
                    {"id":12,"nom":"Pouligny-Saint-Pierre","five":[]},
                    {"id":13,"nom":"Selles-sur-Cher","five":[]},
                    {"id":14,"nom":"Sainte-Maure de Touraine","five":[]},
                    {"id":15,"nom":"Taupinière","five":[]},
                    {"id":16,"nom":"Tomme de chèvre des Pyrénées","five":[]},
                    {"id":17,"nom":"Tomme de chèvre de Savoie","five":[]},
                    {"id":18,"nom":"Valençay","five":[]}
                    ]
                },
                {"id":6,"nom":"brebis","four":[
                    {"id":1,"nom":"Ossau-Iraty","five":[]},
                    {"id":2,"nom":"Saulzais","five":[]},
                    {"id":3,"nom":"Tomme du Pays Basque","five":[]},
                    {"id":4,"nom":"Tomme du Béarn","five":[]}
                    ]
                },
                {"id":7,"nom":"fondu","four":[
                    ]
                }
                ]
            },
            {"id":3,"nom":"oeufs", "three":[
                ]
            },
            {"id":4,"nom":"viande", "three":[
                ]
            },
            {"id":5,"nom":"poisson", "three":[
                {"id":1,"nom":"cabillaud","four":[]},
                {"id":5,"nom":"maquereau","four":[]},
                {"id":10,"nom":"merlan","four":[]},
                {"id":15,"nom":"sardine","four":[]},
                {"id":20,"nom":"saumon","four":[]},
                {"id":25,"nom":"thon","four":[]}
                ]
            }
            ]
        },
        {"id":2, "nom":"végétale", "two":[
            {"id":3,"nom":"fruits", "three":[
                {"id":1,"nom":"agrumes","four":[
                    {"id":4,"nom":"citron","five":[
                        {"id":1,"nom":"jaune"},
                        {"id":2,"nom":"vert"},
                        {"id":3,"nom":"de Menton"},
                        {"id":7,"nom":"yuzu"}
                    ]},
                    {"id":5,"nom":"clémentine","five":[]},
                    {"id":6,"nom":"mandarine","five":[
                        {"id":7,"nom":"satsuma"}
                    ]},
                    {"id":10,"nom":"orange","five":[]},
                    {"id":13,"nom":"pomelos","five":[]}
                    ]
                },
                {"id":2,"nom":"baies","four":[
                    {"id":1,"nom":"fraise","five":[]},
                    {"id":2,"nom":"framboise","five":[]},
                    {"id":3,"nom":"myrtille","five":[]},
                    {"id":4,"nom":"mûre","five":[]}
                    ]
                },
                {"id":3,"nom":"arbres","four":[
                    {"id":1,"nom":"abricot","five":[]},
                    {"id":2,"nom":"ananas","five":[]},
                    {"id":15,"nom":"banane","five":[]},
                    {"id":25,"nom":"châtaigne","five":[]},
                    {"id":16,"nom":"cerise","five":[]},
                    {"id":6,"nom":"datte","five":[]},
                    {"id":7,"nom":"figue","five":[]},
                    {"id":9,"nom":"kiwi","five":[]},
                    {"id":10,"nom":"mangue","five":[]},
                    {"id":17,"nom":"nectarine","five":[]},
                    {"id":18,"nom":"pêche","five":[]},
                    {"id":11,"nom":"pomme","five":[
                        {"id":1,"nom":"jonagold"},
                        {"id":2,"nom":"boskoop"}
                    ]},
                    {"id":12,"nom":"poire","five":[
                        {"id":1,"nom":"conférense"},
                        {"id":2,"nom":"passe-crassane"},
                        {"id":8,"nom":"williams jaune"},
                        {"id":9,"nom":"williams rouge"}
                    ]},
                    {"id":14,"nom":"prune","five":[]}
                    
                    ]
                },
                {"id":4,"nom":"noix","four":[
                    {"id":1,"nom":"noix","five":[]},
                    {"id":2,"nom":"noisette","five":[]},
                    {"id":3,"nom":"cajou","five":[]},
                    {"id":3,"nom":"coco","five":[]},
                    {"id":3,"nom":"pistache","five":[]},
                    {"id":4,"nom":"brésil","five":[]}
                    ]
                }
            ]
        },
        {"id":4,"nom":"légumes", "three":[
            {"id":1,"nom":"racine","four":[
                {"id":1,"nom":"carotte","five":[]},
                {"id":1,"nom":"céleri","five":[]},
                {"id":1,"nom":"pomme de terre","five":[]},
                {"id":1,"nom":"radis","five":[]}
                ]
            },
            {"id":2,"nom":"bulbe","four":[
                {"id":1,"nom":"ail","five":[]},
                {"id":2,"nom":"oignon","five":[]},
                {"id":3,"nom":"échalotte","five":[]},
                {"id":4,"nom":"poireau","five":[]}
                ]
            },
            {"id":3,"nom":"feuille","four":[
                {"id":1,"nom":"choux","five":[
                    {"id":1,"nom":"choux-fleur"},
                    {"id":2,"nom":"chinois"},
                    {"id":3,"nom":"bruxelle"},
                    {"id":4,"nom":"vert"},
                    {"id":5,"nom":"rouge"}
                    ]
                },
                {"id":2,"nom":"salade","five":[
                    {"id":1,"nom":"laitue"},
                    {"id":2,"nom":"batavia"},
                    {"id":3,"nom":"feuille de chêne"},
                    {"id":4,"nom":"frisée"},
                    {"id":5,"nom":"scarole"},
                    {"id":6,"nom":"endive"}
                    ]
                }
                ]
            },
            {"id":4,"nom":"fruit","four":[
                {"id":1,"nom":"avocat","five":[]},
                {"id":2,"nom":"aubergine","five":[]},
                {"id":3,"nom":"cornichon","five":[]},
                {"id":4,"nom":"courgette","five":[]},
                {"id":5,"nom":"pumpkin","five":[
                    {"id":1,"nom":"butternot"},
                    {"id":2,"nom":"citrouille"},
                    {"id":3,"nom":"potiron"}
                    ]
                },
                {"id":6,"nom":"tomate","five":[]}
                ]
            },
            {"id":5,"nom":"pois","four":[
                {"id":1,"nom":"haricot","five":[
                    {"id":1,"nom":"mojette"},
                    {"id":2,"nom":"blanc"},
                    {"id":3,"nom":"noir"},
                    {"id":4,"nom":"rouge"},
                    {"id":5,"nom":"vert"}
                    ]
                },
                {"id":2,"nom":"petit pois","five":[
                    ]
                },
                {"id":3,"nom":"pois chiche","five":[]
                }
            ]
            }
        ]
        },
        {"id":5,"nom":"champignons", "three":[
            {"id":1,"nom":"de Paris","four":[]},
            {"id":2,"nom":"cêpes","four":[]},
            {"id":3,"nom":"girolles","four":[]},
            {"id":4,"nom":"pleurottes","four":[]}
        ]}
            ]
        },
        {"id":3, "nom":"transformée", "two":[
            {"id":1,"nom":"cassoulet", "three":[
            ]},
            {"id":5,"nom":"choucroute", "three":[
                {"id":1,"nom":"crue","four":[]},
                {"id":10,"nom":"cuite","four":[]},
                {"id":20,"nom":"garnie","four":[]}
                ]
            },
            {"id":10,"nom":"pizza", "three":[
                {"id":1,"nom":"margarita","four":[]},
                {"id":10,"nom":"regina","four":[]},
                {"id":20,"nom":"veggie","four":[]}
                ]
            }
            ]
        }
        ]
    },
    {"id":2, "nom":"habitat", "one": [
        {"id":1, "nom":"location", "two":[
             {"id":1, "nom":"non meublé", "three":[
                {"id":1,"nom":"loyer", "four":[]},
                {"id":2,"nom":"caution", "four":[]}
                ]
            },
            {"id":2,"nom":"meublé", "three":[
                {"id":1,"nom":"loyer", "four":[]},
                {"id":2,"nom":"caution", "four":[]}
                ]
            },
            {"id":3, "nom":"garage", "three":[
                    {"id":1,"nom":"loyer", "four":[]},
                    {"id":2,"nom":"caution", "four":[]}
                    ]
            },
            {"id":4, "nom":"parking", "three":[
                    {"id":1,"nom":"loyer", "four":[]},
                    {"id":2,"nom":"caution", "four":[]}
                    ]
            },
            {"id":5, "nom":"stockage", "three":[
                    {"id":1,"nom":"loyer", "four":[]},
                    {"id":2,"nom":"caution", "four":[]}
                    ]
            }
            ]
        },
        {"id":10, "nom":"acquisition", "two":[
            {"id":1, "nom":"maison", "three":[]},
            {"id":2, "nom":"appartement", "three":[]},
            {"id":3, "nom":"terrain", "three":[]},
            {"id":4, "nom":"construction", "three":[]},
            {"id":5, "nom":"rénovation", "three":[]}
            ]
        },
        {"id":2, "nom":"équipement", "two":[
            {"id":1,"nom":"cuisson", "three":[
                {"id":1,"nom":"micro-onde", "four":[]},
                {"id":2,"nom":"four", "four":[]},
                {"id":3,"nom":"plaques", "four":[
                        {"id":1,"nom":"halogène", "five":[]},
                        {"id":2,"nom":"induction", "five":[]}
                    ]
                },
                {"id":4,"nom":"gazinière", "four":[]},
                {"id":5,"nom":"hotte", "four":[]}
                ]
            }, 
            {"id":2,"nom":"froid", "three":[
                {"id":1,"nom":"réfrigérateur", "four":[]},
                {"id":2,"nom":"congélateur", "four":[]}
                ]
            },
            {"id":3,"nom":"nettoyage", "three":[
                {"id":4,"nom":"lave-linge", "four":[]},
                {"id":5,"nom":"lave-vaisselle", "four":[]},
                {"id":6,"nom":"aspirateur", "four":[]}
                ]
            },
            {"id":2, "nom":"mobilier", "three":[
                {"id":1,"nom":"siège", "four":[
                    {"id":1,"nom":"chaise", "five":[]},
                    {"id":2,"nom":"tabouret", "five":[]},
                    {"id":3,"nom":"fauteuil", "five":[]},
                    {"id":4,"nom":"canapé", "five":[]},
                    {"id":5,"nom":"pouf", "five":[]}
                    ]
                }, 
                {"id":2,"nom":"table", "four":[]},
                {"id":3,"nom":"armoire", "four":[]},
                {"id":4,"nom":"lit", "four":[]},
                {"id":5,"nom":"bureau", "four":[]},
                {"id":9,"nom":"tapis", "four":[]},
                {"id":10,"nom":"vitrine", "four":[]}
                ]
            },
            {"id":3, "nom":"chauffage", "three":[
                {"id":1,"nom":"radiateur", "four":[]},
                {"id":2,"nom":"chaudière", "four":[]},
                {"id":3,"nom":"pompe à chaleur", "four":[]},
                {"id":4,"nom":"foyer bois", "four":[]}
                ]
            },
            {"id":4, "nom":"sanitaire", "three":[
                {"id":1,"nom":"lavabo", "four":[]},
                {"id":2,"nom":"évier", "four":[]},
                {"id":3,"nom":"douche", "four":[]},
                {"id":4,"nom":"baignoire", "four":[]},
                {"id":5,"nom":"robinet", "four":[]},
                {"id":6,"nom":"WC", "four":[]}
                ]
            },
            {"id":4, "nom":"luminaire", "three":[
                {"id":1,"nom":"plafonier", "four":[]},
                {"id":2,"nom":"lampe de table", "four":[]},
                {"id":3,"nom":"applique", "four":[]},
                {"id":4,"nom":"lampe de sol", "four":[]},
                {"id":5,"nom":"éclairage externe", "four":[]}
                ]
            },
            {"id":5, "nom":"décor", "three":[
                {"id":1,"nom":"revêtement", "four":[
                    {"id":1,"nom":"peinture", "five":[]},
                    {"id":2,"nom":"papier-peint", "five":[]},
                    {"id":3,"nom":"tissu mural", "five":[]},
                    {"id":4,"nom":"carrelage", "five":[]},
                    {"id":5,"nom":"parquet", "five":[]}
                    ]
                },
                {"id":2,"nom":"objet décoratif", "four":[
                    {"id":1,"nom":"tableau", "five":[]},
                    {"id":2,"nom":"assiette", "five":[]},
                    {"id":2,"nom":"miroir", "five":[]}
                    ]
                }
                ]
            },
            {"id":5, "nom":"ouverture", "three":[
                {"id":1,"nom":"porte", "four":[]
                },
                {"id":2,"nom":"fenêtre", "four":[]
                }
                ]
            },
            {"id":6, "nom":"électrique", "three":[
                {"id":1,"nom":"prise", "four":[]
                },
                {"id":2,"nom":"interrupteur", "four":[]
                },
                {"id":3,"nom":"compteur", "four":[]
                },
                {"id":4,"nom":"disjoncteur", "four":[]
                },
                {"id":5,"nom":"tableau", "four":[]
                },
                {"id":6,"nom":"câble", "four":[]
                }
                ]
            }
            ]
        },
        {"id":3, "nom":"consommable", "two":[
            {"id":2, "nom":"entretien", "three":[
                    {"id":1,"nom":"lessive", "four":[]}, 
                    {"id":2,"nom":"savon", "four":[]},
                    {"id":3,"nom":"douche", "four":[]}
                ]
            },
            {"id":3,"nom":"eau", "three":[
                {"id":1,"nom":"potable", "four":[
                    {"id":1,"nom":"minérale", "five":[
                        {"id":1,"nom":"plate"},
                        {"id":2,"nom":"pétillante"}
                    ]},
                    {"id":2,"nom":"robinet", "five":[]}
                    ]
                },
                {"id":2,"nom":"non potable", "four":[]}
                ]
            },  
            {"id":5,"nom":"énergie", "three":[
                {"id":1,"nom":"électricité", "four":[]},
                {"id":2,"nom":"hydrogène", "four":[]},
                {"id":3,"nom":"gaz", "four":[]},
                {"id":4,"nom":"essence", "four":[]},
                {"id":5,"nom":"gasoil", "four":[]},
                {"id":6,"nom":"GPL", "four":[]},
                {"id":7,"nom":"fuel", "four":[]},
                {"id":8,"nom":"bois", "four":[
                    {"id":1,"nom":"charbon de bois", "five":[] },
                    {"id":2,"nom":"stère", "five":[] },
                    {"id":3,"nom":"pelé", "five":[] }
                    ]
                },
                {"id":9,"nom":"charbon", "four":[]}
                ]
            },
            {"id":6,"nom":"telecom", "three":[
                {"id":1,"nom":"mobile", "four":[
                    {"id":1,"nom":"terrestre", "five":[] },
                    {"id":2,"nom":"satellite", "five":[] }
                    ]
                }, 
                {"id":2,"nom":"internet", "four":[]},
                {"id":3,"nom":"cloud", "four":[]}
                ]
            },
            {"id":7,"nom":"papeterie", "three":[]}
            ] 
        }
        ]
    },
   {"id":3, "nom":"outil", "one": [
        {"id":1, "nom":"manuel", "two":[
            {"id":1, "nom":"burin", "three":[]},
            {"id":20, "nom":"ciseaux", "three":[]},
            {"id":30, "nom":"lime", "three":[]},
            {"id":40, "nom":"marteau", "three":[]},
            {"id":50, "nom":"rabot", "three":[]},
            {"id":60, "nom":"scie", "three":[
                {"id":1,"nom":"bois", "four":[]},
                {"id":3,"nom":"métaux", "four":[]}
                ]
            },
            {"id":70, "nom":"tournevis", "three":[]},
            {"id":80, "nom":"truelle", "three":[]}
            ]
        },
        {"id":2, "nom":"electro", "two":[
            {"id":1, "nom":"ponceuse", "three":[]},
            {"id":10, "nom":"perceuse", "three":[]},
            {"id":20, "nom":"scie", "three":[
                {"id":1,"nom":"circulaire", "four":[]},
                {"id":3,"nom":"sauteuse", "four":[]}
                ]
            },
            {"id":30, "nom":"visseuse", "three":[]}
            ]
        }
    ]
    },
    {"id":4, "nom":"soins", "one": [
         {"id":1, "nom":"santé", "two":[
            {"id":1, "nom":"médecin", "three":[
                {"id":1, "nom":"généraliste", "four":[]},
                {"id":2, "nom":"anesthésie", "four":[]},
                {"id":3, "nom":"cardiologue", "four":[]},
                {"id":4, "nom":"chirurgie", "four":[]},
                {"id":5, "nom":"dentiste", "four":[]},
                {"id":6, "nom":"dermatologue", "four":[]},
                {"id":7, "nom":"ophtalmologue", "four":[]},
                {"id":8, "nom":"radiologue", "four":[]}
            ]},
            {"id":2, "nom":"pharmacie", "three":[]},
            {"id":3, "nom":"infirmier", "three":[]},
            {"id":4, "nom":"analyses", "three":[]},
            {"id":5, "nom":"ambulance", "three":[]},
            {"id":6, "nom":"hôpital", "three":[]},
            {"id":7, "nom":"kinésie-thérapie", "three":[]}
            ]
        },
        {"id":2, "nom":"assistance", "two":[]}
    ]
    },
    {"id":5, "nom":"sécurité", "one": [
        {"id":2, "nom":"assurance", "two":[
            {"id":1,"nom":"mutuelle", "three":[]},
            {"id":2,"nom":"auto", "three":[]},
            {"id":3,"nom":"habitation", "three":[
                {"id":1,"nom":"propriétaire", "four":[]},
                {"id":2,"nom":"locataire", "four":[]}
                ]
            },
            {"id":4,"nom":"multiple", "three":[]},
            {"id":5,"nom":"réparation", "three":[]}
        ]}
    ]
    },
    {"id":6, "nom":"solidarité", "one": [
        {"id":1, "nom":"cotisation", "two":[
            {"id":1, "nom":"socicale", "three":[
                {"id":1, "nom":"URSSAF", "four":[]},
                {"id":2, "nom":"CSG", "four":[]}
                ]
            },
            {"id":2, "nom":"association", "three":[]},
            {"id":3, "nom":"syndicale", "three":[]}
            ]
        },
        {"id":2, "nom":"impôt", "two":[
            {"id":1,"nom":"revenu", "three":[]},
            {"id":2,"nom":"taxe habitation", "three":[]},
            {"id":3,"nom":"taxe foncière", "three":[]},
            {"id":4,"nom":"TVA", "three":[]}
            ]
        }
    ]
    },
    {"id":7, "nom":"transport", "one": [
        {"id":1, "nom":"individuel", "two":[
            {"id":1, "nom":"achat", "three":[
                {"id":1,"nom":"aérien", "four":[
                    {"id":1,"nom":"avion", "five":[]},
                    {"id":2,"nom":"ULM", "five":[]},
                    {"id":3,"nom":"parapente", "five":[]},
                    {"id":4,"nom":"hélicoptère", "five":[]},
                    {"id":5,"nom":"montgolfière", "five":[]}
                    ]
                },
                {"id":2,"nom":"aquatique", "four":[
                    {"id":1,"nom":"barque", "five":[]},
                    {"id":2,"nom":"bateau", "five":[]},
                    {"id":3,"nom":"voilier", "five":[]}
                ]},
                {"id":3,"nom":"terrestre", "four":[
                    {"id":1,"nom":"automobile", "five":[]},
                    {"id":2,"nom":"moto", "five":[]},
                    {"id":3,"nom":"scooter", "five":[]},
                    {"id":4,"nom":"vélo", "five":[]},
                    {"id":5,"nom":"trotinette", "five":[]},
                    {"id":6,"nom":"quad", "five":[]}
                ]
                }
                ]
            },
            {"id":2, "nom":"entretien", "three":[
                {"id":1,"nom":"nettoyage", "four":[]},
                {"id":2,"nom":"révision", "four":[]},
                {"id":3,"nom":"réparation", "four":[]},
                {"id":3,"nom":"pneus", "four":[]}
            ]},
            {"id":3, "nom":"location", "three":[
                
            ]},
            {"id":4, "nom":"frais", "three":[
                {"id":1,"nom":"péage", "four":[]},
                {"id":2,"nom":"remorquage", "four":[]},
                {"id":3,"nom":"amendes", "four":[]}
            ]}
            ]
        },
        {"id":2, "nom":"en commun", "two":[
            {"id":1, "nom":"abonnement", "three":[]},
            {"id":2, "nom":"ticket", "three":[]},
            {"id":9, "nom":"frais de port", "three":[]}
            ]
        }
        ]
    },
    {"id":8, "nom":"loisir", "one": [
         {"id":1, "nom":"streaming", "two":[
            {"id":1, "nom":"abonnement", "three":[]},
            {"id":2, "nom":"location", "three":[]},
            {"id":3, "nom":"équipement", "three":[]}
            ]
        },
        {"id":2, "nom":"copie", "two":[
            {"id":1, "nom":"livre", "three":[]},
            {"id":2, "nom":"musique", "three":[]},
            {"id":3, "nom":"vidéo", "three":[]},
            {"id":5, "nom":"équipement", "three":[]}
            ]
        },
        {"id":3, "nom":"spectacle", "two":[
            {"id":1, "nom":"cinéma", "three":[]},
            {"id":2, "nom":"théâtre", "three":[]},
            {"id":3, "nom":"concert", "three":[]}
            ]
        },
        {"id":4, "nom":"tourisme", "two":[
            {"id":1, "nom":"voyage", "three":[]},
            {"id":2, "nom":"musée", "three":[]},
            {"id":3, "nom":"équipement", "three":[]}
            ]
        },
        {"id":4, "nom":"attraction", "two":[
            {"id":1, "nom":"parc", "three":[]},
            {"id":2, "nom":"forain", "three":[]},
            {"id":3, "nom":"équipement", "three":[]}
            ]
        },
        {"id":6, "nom":"sport", "two":[
            {"id":1, "nom":"abonnement", "three":[]},
            {"id":2, "nom":"équipement", "three":[]}
            ]
        }
    ]
    },
    {"id":9, "nom":"data", "one": [
        
    ]
    },
    {"id":10, "nom":"revenu", "one": [
            {"id":1, "nom":"salaire", "two": [
                ]
            },
            {"id":2, "nom":"pension", "two": [
                ]
            },
            {"id":3, "nom":"remboursement", "two": [
                ]
            },
            {"id":4, "nom":"intérêts", "two": [
                ]
            },
            {"id":5, "nom":"dividende", "two": [
                ]
            },
            {"id":6, "nom":"emprunt", "two": [
                {"id":1, "nom":"capital", "three": [] },
                {"id":2, "nom":"intérêts", "three": [] }
                ]
            },
            {"id":7, "nom":"vente", "two": [
                ]
            },
            {"id":9, "nom":"don", "two": [
                ]
            }
        ]
        }
    ]
}
"""
