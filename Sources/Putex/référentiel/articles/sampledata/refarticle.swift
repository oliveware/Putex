//
//  refarticle.swift
//  Semantex
//
//  Created by Herve Crespel on 18/11/2025.
//

public let refarticle = ArticlerefDocument(articlerefjson).ref

public let articlerefjson = """
{
    "articles": [],
    "soustypes" : {},
    "cadrages" : {},
    "fermetures": {
        "nom": "une fermeture",
        "levels": [
            {
                "items": [
                    {
                        "type": [
                            1
                        ],
                        "noms": [
                            "capsule"
                        ]
                    },
                    {
                        "type": [
                            2
                        ],
                        "noms": [
                            "bouchon"
                        ]
                    },
                    {
                        "type": [
                            3
                        ],
                        "noms": [
                            "couvercle"
                        ]
                    },
                    {
                        "type": [
                            4
                        ],
                        "noms": [
                            "zip"
                        ]
                    },
                    {
                        "type": [
                            5
                        ],
                        "noms": [
                            "lien"
                        ]
                    },
                    {
                        "type": [
                            6
                        ],
                        "noms": [
                            "non refermable"
                        ]
                    },
                    {
                        "type": [
                            7
                        ],
                        "noms": [
                            "couture"
                        ]
                    },
                    {
                        "type": [
                            8
                        ],
                        "noms": [
                            "pschitt"
                        ]
                    },
                    {
                        "type": [
                            9
                        ],
                        "noms": [
                            "verseur"
                        ]
                    }
                ]
            },
            {
                "items": [
                    {
                        "type": [
                            2,
                            2
                        ],
                        "noms": [
                            "bouchon",
                            "plastique"
                        ]
                    },
                    {
                        "type": [
                            2,
                            3
                        ],
                        "noms": [
                            "bouchon",
                            "mécanique"
                        ]
                    },
                    {
                        "type": [
                            1,
                            4
                        ],
                        "noms": [
                            "capsule",
                            "forcée"
                        ]
                    },
                    {
                        "type": [
                            3,
                            5
                        ],
                        "noms": [
                            "couvercle",
                            "vissé"
                        ]
                    },
                    {
                        "type": [
                            3,
                            6
                        ],
                        "noms": [
                            "couvercle",
                            "forcé"
                        ]
                    },
                    {
                        "type": [
                            3,
                            7
                        ],
                        "noms": [
                            "couvercle",
                            "parfait"
                        ],
                        "car": "couvercle en verre avec joint caoutchouc"
                    },
                    {
                        "type": [
                            2,
                            8
                        ],
                        "noms": [
                            "bouchon",
                            "métal"
                        ]
                    },
                    {
                        "type": [
                            2,
                            10
                        ],
                        "noms": [
                            "bouchon",
                            "liège"
                        ]
                    },
                    {
                        "use": "l’étanchéité parfaite est une mauvaise chose pour les vins,",
                        "type": [
                            2,
                            11
                        ],
                        "noms": [
                            "bouchon",
                            "vino seal"
                        ],
                        "car": "grâce à un petit joint en forme d’anneau et en matière synthétique (Elvax) qui vient s’apposer sur le haut du goulot de la bouteille à sceller."
                    }
                ]
            },
            {
                "items": [
                    {
                        "noms": [
                            "bouchon",
                            "liège",
                            "naturel"
                        ],
                        "type": [
                            2,
                            10,
                            3
                        ]
                    },
                    {
                        "noms": [
                            "bouchon",
                            "liège",
                            "colmaté"
                        ],
                        "type": [
                            2,
                            10,
                            4
                        ]
                    },
                    {
                        "noms": [
                            "bouchon",
                            "liège",
                            "twin-top"
                        ],
                        "type": [
                            2,
                            10,
                            5
                        ]
                    },
                    {
                        "noms": [
                            "bouchon",
                            "liège",
                            "synthetic"
                        ],
                        "type": [
                            2,
                            10,
                            6
                        ]
                    },
                    {
                        "noms": [
                            "bouchon",
                            "liège",
                            "micro"
                        ],
                        "type": [
                            2,
                            10,
                            7
                        ]
                    },
                    {
                        "car": "liège aggloméré",
                        "noms": [
                            "bouchon",
                            "liège",
                            "diam"
                        ],
                        "type": [
                            2,
                            10,
                            8
                        ]
                    },
                    {
                        "noms": [
                            "bouchon",
                            "liège",
                            "conique"
                        ],
                        "type": [
                            2,
                            10,
                            9
                        ]
                    },
                    {
                        "noms": [
                            "bouchon",
                            "liège",
                            "top bois"
                        ],
                        "type": [
                            2,
                            10,
                            10
                        ]
                    },
                    {
                        "noms": [
                            "bouchon",
                            "liège",
                            "top plastique"
                        ],
                        "type": [
                            2,
                            10,
                            11
                        ]
                    },
                    {
                        "noms": [
                            "bouchon",
                            "mécanique",
                            "vissé"
                        ],
                        "type": [
                            2,
                            3,
                            12
                        ]
                    },
                    {
                        "noms": [
                            "bouchon",
                            "vino seal",
                            "verre"
                        ],
                        "type": [
                            2,
                            11,
                            13
                        ]
                    },
                    {
                        "noms": [
                            "bouchon",
                            "vino seal",
                            "plastique"
                        ],
                        "type": [
                            2,
                            11,
                            14
                        ]
                    }
                ]
            },
            {
                "items": [
                    {
                        "noms": [
                            "bouchon",
                            "liège",
                            "micro",
                            ""
                        ],
                        "type": [
                            2,
                            10,
                            7,
                            1
                        ]
                    }
                ]
            }
        ]
    },
    "types": [
        
    ],
    
    "besoins": {
        "nom": "un besoin",
        "levels": [
            {
                "items": [
                    {
                        "noms": [
                            "nourriture"
                        ],
                        "type": [
                            1
                        ]
                    },
                    {
                        "noms": [
                            "habitat"
                        ],
                        "type": [
                            2
                        ]
                    },
                    {
                        "noms": [
                            "soins"
                        ],
                        "type": [
                            3
                        ]
                    },
                    {
                        "noms": [
                            "solidarité"
                        ],
                        "type": [
                            4
                        ]
                    },
                    {
                        "noms": [
                            "transport"
                        ],
                        "type": [
                            5
                        ]
                    },
                    {
                        "noms": [
                            "connaissance"
                        ],
                        "type": [
                            6
                        ]
                    },
                    {
                        "noms": [
                            "finance"
                        ],
                        "type": [
                            7
                        ]
                    },
                    {
                        "noms": [
                            "production"
                        ],
                        "type": [
                            8
                        ]
                    }
                ]
            },
            {
                "items": [
                    {
                        "noms": [
                            "nourriture",
                            "animale"
                        ],
                        "type": [
                            1,
                            1
                        ]
                    },
                    {
                        "noms": [
                            "nourriture",
                            "végétale"
                        ],
                        "type": [
                            1,
                            2
                        ]
                    },
                    {
                        "noms": [
                            "nourriture",
                            "cuisinée"
                        ],
                        "type": [
                            1,
                            3
                        ]
                    },
                    {
                        "noms": [
                            "nourriture",
                            "transformée"
                        ],
                        "type": [
                            1,
                            4
                        ]
                    },
                    {
                        "noms": [
                            "habitat",
                            "location"
                        ],
                        "type": [
                            2,
                            5
                        ]
                    },
                    {
                        "noms": [
                            "habitat",
                            "acquisition"
                        ],
                        "type": [
                            2,
                            6
                        ]
                    },
                    {
                        "noms": [
                            "habitat",
                            "construction"
                        ],
                        "type": [
                            2,
                            7
                        ]
                    },
                    {
                        "noms": [
                            "habitat",
                            "rénovation"
                        ],
                        "type": [
                            2,
                            8
                        ]
                    },
                    {
                        "noms": [
                            "habitat",
                            "équipement"
                        ],
                        "type": [
                            2,
                            9
                        ]
                    },
                    {
                        "noms": [
                            "habitat",
                            "consommable"
                        ],
                        "type": [
                            2,
                            10
                        ]
                    },
                    {
                        "noms": [
                            "soins",
                            "médecin"
                        ],
                        "type": [
                            3,
                            11
                        ]
                    },
                    {
                        "type": [
                            3,
                            12
                        ],
                        "noms": [
                            "soins",
                            "pharmacie"
                        ]
                    },
                    {
                        "type": [
                            3,
                            13
                        ],
                        "noms": [
                            "soins",
                            "paramédical"
                        ]
                    },
                    {
                        "type": [
                            3,
                            14
                        ],
                        "noms": [
                            "soins",
                            "hôpital"
                        ]
                    },
                    {
                        "type": [
                            3,
                            15
                        ],
                        "noms": [
                            "soins",
                            "assistance"
                        ]
                    },
                    {
                        "type": [
                            4,
                            16
                        ],
                        "noms": [
                            "solidarité",
                            "assurance"
                        ]
                    },
                    {
                        "type": [
                            4,
                            17
                        ],
                        "noms": [
                            "solidarité",
                            "cotisation"
                        ]
                    },
                    {
                        "type": [
                            4,
                            18
                        ],
                        "noms": [
                            "solidarité",
                            "impôt"
                        ]
                    },
                    {
                        "type": [
                            4,
                            19
                        ],
                        "noms": [
                            "solidarité",
                            "don"
                        ]
                    },
                    {
                        "type": [
                            5,
                            21
                        ],
                        "noms": [
                            "transport",
                            "en commun"
                        ]
                    },
                    {
                        "type": [
                            6,
                            22
                        ],
                        "noms": [
                            "connaissance",
                            "loisir"
                        ]
                    },
                    {
                        "type": [
                            6,
                            23
                        ],
                        "noms": [
                            "connaissance",
                            "formation"
                        ]
                    },
                    {
                        "type": [
                            6,
                            24
                        ],
                        "noms": [
                            "connaissance",
                            "data"
                        ]
                    },
                    {
                        "type": [
                            7,
                            25
                        ],
                        "noms": [
                            "finance",
                            "revenu"
                        ]
                    },
                    {
                        "type": [
                            7,
                            26
                        ],
                        "noms": [
                            "finance",
                            "emprunt"
                        ],
                        "car": "somme empruntée à un tiers"
                    },
                    {
                        "type": [
                            8,
                            27
                        ],
                        "noms": [
                            "production",
                            "outillage"
                        ]
                    },
                    {
                        "type": [
                            8,
                            28
                        ],
                        "noms": [
                            "production",
                            "quincaillerie"
                        ]
                    },
                    {
                        "type": [
                            8,
                            29
                        ],
                        "noms": [
                            "production",
                            "électricité"
                        ]
                    },
                    {
                        "type": [
                            8,
                            31
                        ],
                        "noms": [
                            "production",
                            "jardinage"
                        ]
                    },
                    {
                        "type": [
                            7,
                            33
                        ],
                        "noms": [
                            "finance",
                            "prêt  "
                        ]
                    },
                    {
                        "type": [
                            5,
                            34
                        ],
                        "noms": [
                            "transport",
                            "terrestre"
                        ]
                    },
                    {
                        "type": [
                            5,
                            35
                        ],
                        "noms": [
                            "transport",
                            "aérien"
                        ]
                    },
                    {
                        "type": [
                            5,
                            36
                        ],
                        "noms": [
                            "transport",
                            "fluvial"
                        ]
                    },
                    {
                        "type": [
                            5,
                            37
                        ],
                        "noms": [
                            "transport",
                            "maritime"
                        ]
                    },
                    {
                        "type": [
                            5,
                            38
                        ],
                        "noms": [
                            "transport",
                            "frais"
                        ]
                    },
                    {
                        "type": [
                            1,
                            39
                        ],
                        "noms": [
                            "nourriture",
                            "boisson"
                        ]
                    },
                    {
                        "type": [
                            8,
                            40
                        ],
                        "noms": [
                            "production",
                            "matériaux"
                        ]
                    }
                ]
            },
            {
                "items": [
                    {
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache"
                        ],
                        "type": [
                            1,
                            1,
                            1
                        ]
                    },
                    {
                        "noms": [
                            "nourriture",
                            "animale",
                            "chèvre"
                        ],
                        "type": [
                            1,
                            1,
                            2
                        ]
                    },
                    {
                        "noms": [
                            "nourriture",
                            "animale",
                            "brebis"
                        ],
                        "type": [
                            1,
                            1,
                            3
                        ]
                    },
                    {
                        "noms": [
                            "nourriture",
                            "animale",
                            "mouton"
                        ],
                        "type": [
                            1,
                            1,
                            4
                        ]
                    },
                    {
                        "noms": [
                            "nourriture",
                            "animale",
                            "boeuf"
                        ],
                        "type": [
                            1,
                            1,
                            5
                        ]
                    },
                    {
                        "noms": [
                            "nourriture",
                            "animale",
                            "veau"
                        ],
                        "type": [
                            1,
                            1,
                            6
                        ]
                    },
                    {
                        "noms": [
                            "nourriture",
                            "animale",
                            "porc"
                        ],
                        "type": [
                            1,
                            1,
                            7
                        ]
                    },
                    {
                        "noms": [
                            "nourriture",
                            "animale",
                            "cheval"
                        ],
                        "type": [
                            1,
                            1,
                            8
                        ]
                    },
                    {
                        "noms": [
                            "nourriture",
                            "animale",
                            "volaille"
                        ],
                        "type": [
                            1,
                            1,
                            9
                        ]
                    },
                    {
                        "noms": [
                            "nourriture",
                            "animale",
                            "charcuterie"
                        ],
                        "type": [
                            1,
                            1,
                            10
                        ]
                    },
                    {
                        "noms": [
                            "nourriture",
                            "animale",
                            "poisson"
                        ],
                        "type": [
                            1,
                            1,
                            11
                        ]
                    },
                    {
                        "noms": [
                            "nourriture",
                            "animale",
                            "crustacés"
                        ],
                        "type": [
                            1,
                            1,
                            12
                        ]
                    },
                    {
                        "noms": [
                            "nourriture",
                            "animale",
                            "coquillages"
                        ],
                        "type": [
                            1,
                            1,
                            13
                        ]
                    },
                    {
                        "noms": [
                            "nourriture",
                            "animale",
                            "insectes"
                        ],
                        "type": [
                            1,
                            1,
                            14
                        ]
                    },
                    {
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits"
                        ],
                        "type": [
                            1,
                            2,
                            15
                        ]
                    },
                    {
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes"
                        ],
                        "type": [
                            1,
                            2,
                            16
                        ]
                    },
                    {
                        "noms": [
                            "nourriture",
                            "végétale",
                            "champignons"
                        ],
                        "type": [
                            1,
                            2,
                            17
                        ]
                    },
                    {
                        "noms": [
                            "nourriture",
                            "végétale",
                            "algues"
                        ],
                        "car": "Les algues se mangent en paillettes, en tartares, incorporées aux salades, aux soupes.",
                        "type": [
                            1,
                            2,
                            18
                        ],
                        "use": "Elles ont de nombreuses vertus pour la santé"
                    },
                    {
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumineuses"
                        ],
                        "type": [
                            1,
                            2,
                            19
                        ]
                    },
                    {
                        "noms": [
                            "nourriture",
                            "cuisinée",
                            "cassoulet"
                        ],
                        "type": [
                            1,
                            3,
                            20
                        ]
                    },
                    {
                        "noms": [
                            "nourriture",
                            "cuisinée",
                            "choucroute"
                        ],
                        "type": [
                            1,
                            3,
                            21
                        ]
                    },
                    {
                        "noms": [
                            "nourriture",
                            "cuisinée",
                            "pizza"
                        ],
                        "type": [
                            1,
                            3,
                            22
                        ]
                    },
                    {
                        "noms": [
                            "nourriture",
                            "transformée",
                            "céréales"
                        ],
                        "type": [
                            1,
                            4,
                            23
                        ]
                    },
                    {
                        "noms": [
                            "nourriture",
                            "transformée",
                            "bonbons"
                        ],
                        "type": [
                            1,
                            4,
                            24
                        ]
                    },
                    {
                        "noms": [
                            "habitat",
                            "location",
                            "non meublé"
                        ],
                        "type": [
                            2,
                            5,
                            25
                        ]
                    },
                    {
                        "noms": [
                            "habitat",
                            "location",
                            "meublé"
                        ],
                        "type": [
                            2,
                            5,
                            26
                        ]
                    },
                    {
                        "noms": [
                            "habitat",
                            "location",
                            "garage"
                        ],
                        "type": [
                            2,
                            5,
                            27
                        ]
                    },
                    {
                        "noms": [
                            "habitat",
                            "location",
                            "parking"
                        ],
                        "type": [
                            2,
                            5,
                            28
                        ]
                    },
                    {
                        "noms": [
                            "habitat",
                            "location",
                            "stockage"
                        ],
                        "type": [
                            2,
                            5,
                            29
                        ]
                    },
                    {
                        "noms": [
                            "habitat",
                            "acquisition",
                            "maison"
                        ],
                        "type": [
                            2,
                            6,
                            30
                        ]
                    },
                    {
                        "noms": [
                            "habitat",
                            "acquisition",
                            "appartement"
                        ],
                        "type": [
                            2,
                            6,
                            31
                        ]
                    },
                    {
                        "noms": [
                            "habitat",
                            "acquisition",
                            "terrain"
                        ],
                        "type": [
                            2,
                            6,
                            32
                        ]
                    },
                    {
                        "noms": [
                            "habitat",
                            "équipement",
                            "cuisson"
                        ],
                        "type": [
                            2,
                            9,
                            33
                        ]
                    },
                    {
                        "noms": [
                            "habitat",
                            "équipement",
                            "froid"
                        ],
                        "type": [
                            2,
                            9,
                            34
                        ]
                    },
                    {
                        "noms": [
                            "habitat",
                            "équipement",
                            "nettoyage"
                        ],
                        "type": [
                            2,
                            9,
                            35
                        ]
                    },
                    {
                        "noms": [
                            "habitat",
                            "équipement",
                            "mobilier"
                        ],
                        "type": [
                            2,
                            9,
                            36
                        ]
                    },
                    {
                        "noms": [
                            "habitat",
                            "équipement",
                            "chauffage"
                        ],
                        "type": [
                            2,
                            9,
                            37
                        ]
                    },
                    {
                        "noms": [
                            "habitat",
                            "équipement",
                            "sanitaire"
                        ],
                        "type": [
                            2,
                            9,
                            38
                        ]
                    },
                    {
                        "noms": [
                            "habitat",
                            "équipement",
                            "luminaire"
                        ],
                        "type": [
                            2,
                            9,
                            39
                        ]
                    },
                    {
                        "noms": [
                            "habitat",
                            "équipement",
                            "décor"
                        ],
                        "type": [
                            2,
                            9,
                            40
                        ]
                    },
                    {
                        "noms": [
                            "habitat",
                            "équipement",
                            "ouverture"
                        ],
                        "type": [
                            2,
                            9,
                            41
                        ]
                    },
                    {
                        "noms": [
                            "habitat",
                            "équipement",
                            "électrique"
                        ],
                        "type": [
                            2,
                            9,
                            42
                        ]
                    },
                    {
                        "noms": [
                            "habitat",
                            "consommable",
                            "entretien"
                        ],
                        "type": [
                            2,
                            10,
                            43
                        ]
                    },
                    {
                        "noms": [
                            "habitat",
                            "consommable",
                            "eau"
                        ],
                        "type": [
                            2,
                            10,
                            44
                        ]
                    },
                    {
                        "noms": [
                            "habitat",
                            "consommable",
                            "énergie"
                        ],
                        "type": [
                            2,
                            10,
                            45
                        ]
                    },
                    {
                        "noms": [
                            "habitat",
                            "consommable",
                            "telecom"
                        ],
                        "type": [
                            2,
                            10,
                            46
                        ]
                    },
                    {
                        "noms": [
                            "habitat",
                            "consommable",
                            "papeterie"
                        ],
                        "type": [
                            2,
                            10,
                            47
                        ]
                    },
                    {
                        "noms": [
                            "soins",
                            "médecin",
                            "généraliste"
                        ],
                        "type": [
                            3,
                            11,
                            48
                        ]
                    },
                    {
                        "noms": [
                            "soins",
                            "médecin",
                            "anesthésie"
                        ],
                        "type": [
                            3,
                            11,
                            49
                        ]
                    },
                    {
                        "noms": [
                            "soins",
                            "médecin",
                            "cardiologue"
                        ],
                        "type": [
                            3,
                            11,
                            50
                        ]
                    },
                    {
                        "noms": [
                            "soins",
                            "médecin",
                            "chirurgie"
                        ],
                        "type": [
                            3,
                            11,
                            51
                        ]
                    },
                    {
                        "noms": [
                            "soins",
                            "médecin",
                            "dentiste"
                        ],
                        "type": [
                            3,
                            11,
                            52
                        ]
                    },
                    {
                        "noms": [
                            "soins",
                            "médecin",
                            "dermatologue"
                        ],
                        "type": [
                            3,
                            11,
                            53
                        ]
                    },
                    {
                        "noms": [
                            "soins",
                            "médecin",
                            "ophtalmologue"
                        ],
                        "type": [
                            3,
                            11,
                            54
                        ]
                    },
                    {
                        "noms": [
                            "soins",
                            "médecin",
                            "radiologue"
                        ],
                        "type": [
                            3,
                            11,
                            55
                        ]
                    },
                    {
                        "noms": [
                            "soins",
                            "paramédical",
                            "infirmier"
                        ],
                        "type": [
                            3,
                            13,
                            56
                        ]
                    },
                    {
                        "noms": [
                            "soins",
                            "paramédical",
                            "analyses"
                        ],
                        "type": [
                            3,
                            13,
                            57
                        ]
                    },
                    {
                        "noms": [
                            "soins",
                            "paramédical",
                            "ambulance"
                        ],
                        "type": [
                            3,
                            13,
                            58
                        ]
                    },
                    {
                        "noms": [
                            "soins",
                            "paramédical",
                            "kinésie-thérapie"
                        ],
                        "type": [
                            3,
                            13,
                            59
                        ]
                    },
                    {
                        "noms": [
                            "soins",
                            "paramédical",
                            "orthoptiste"
                        ],
                        "type": [
                            3,
                            13,
                            60
                        ]
                    },
                    {
                        "noms": [
                            "solidarité",
                            "assurance",
                            "multi-risque"
                        ],
                        "type": [
                            4,
                            16,
                            61
                        ]
                    },
                    {
                        "noms": [
                            "solidarité",
                            "assurance",
                            "auto"
                        ],
                        "type": [
                            4,
                            16,
                            62
                        ]
                    },
                    {
                        "noms": [
                            "solidarité",
                            "assurance",
                            "habitation"
                        ],
                        "type": [
                            4,
                            16,
                            63
                        ]
                    },
                    {
                        "noms": [
                            "solidarité",
                            "assurance",
                            "réparation"
                        ],
                        "type": [
                            4,
                            16,
                            64
                        ]
                    },
                    {
                        "noms": [
                            "solidarité",
                            "cotisation",
                            "sociale"
                        ],
                        "type": [
                            4,
                            17,
                            65
                        ]
                    },
                    {
                        "noms": [
                            "solidarité",
                            "cotisation",
                            "association"
                        ],
                        "type": [
                            4,
                            17,
                            66
                        ]
                    },
                    {
                        "noms": [
                            "solidarité",
                            "cotisation",
                            "syndicale"
                        ],
                        "type": [
                            4,
                            17,
                            67
                        ]
                    },
                    {
                        "noms": [
                            "solidarité",
                            "impôt",
                            "revenu"
                        ],
                        "type": [
                            4,
                            18,
                            68
                        ]
                    },
                    {
                        "noms": [
                            "solidarité",
                            "impôt",
                            "taxe habitation"
                        ],
                        "type": [
                            4,
                            18,
                            69
                        ]
                    },
                    {
                        "noms": [
                            "solidarité",
                            "impôt",
                            "taxe foncière"
                        ],
                        "type": [
                            4,
                            18,
                            70
                        ]
                    },
                    {
                        "noms": [
                            "solidarité",
                            "impôt",
                            "TVA"
                        ],
                        "type": [
                            4,
                            18,
                            71
                        ]
                    },
                    {
                        "noms": [
                            "transport",
                            "en commun",
                            "abonnement"
                        ],
                        "type": [
                            5,
                            21,
                            76
                        ]
                    },
                    {
                        "noms": [
                            "transport",
                            "en commun",
                            "ticket"
                        ],
                        "type": [
                            5,
                            21,
                            77
                        ]
                    },
                    {
                        "noms": [
                            "transport",
                            "en commun",
                            "frais de port"
                        ],
                        "type": [
                            5,
                            21,
                            78
                        ]
                    },
                    {
                        "noms": [
                            "connaissance",
                            "loisir",
                            "streaming"
                        ],
                        "type": [
                            6,
                            22,
                            79
                        ]
                    },
                    {
                        "noms": [
                            "connaissance",
                            "loisir",
                            "librairie"
                        ],
                        "type": [
                            6,
                            22,
                            80
                        ]
                    },
                    {
                        "noms": [
                            "connaissance",
                            "loisir",
                            "musique"
                        ],
                        "type": [
                            6,
                            22,
                            81
                        ]
                    },
                    {
                        "noms": [
                            "connaissance",
                            "loisir",
                            "photo"
                        ],
                        "type": [
                            6,
                            22,
                            82
                        ]
                    },
                    {
                        "noms": [
                            "connaissance",
                            "loisir",
                            "vidéo"
                        ],
                        "type": [
                            6,
                            22,
                            83
                        ]
                    },
                    {
                        "noms": [
                            "connaissance",
                            "loisir",
                            "peinture"
                        ],
                        "type": [
                            6,
                            22,
                            84
                        ]
                    },
                    {
                        "noms": [
                            "connaissance",
                            "loisir",
                            "spectacle"
                        ],
                        "type": [
                            6,
                            22,
                            85
                        ]
                    },
                    {
                        "noms": [
                            "connaissance",
                            "loisir",
                            "tourisme"
                        ],
                        "type": [
                            6,
                            22,
                            86
                        ]
                    },
                    {
                        "noms": [
                            "connaissance",
                            "loisir",
                            "attraction"
                        ],
                        "type": [
                            6,
                            22,
                            87
                        ]
                    },
                    {
                        "noms": [
                            "connaissance",
                            "loisir",
                            "sport"
                        ],
                        "type": [
                            6,
                            22,
                            88
                        ]
                    },
                    {
                        "noms": [
                            "connaissance",
                            "data",
                            "identity"
                        ],
                        "type": [
                            6,
                            24,
                            89
                        ]
                    },
                    {
                        "noms": [
                            "connaissance",
                            "data",
                            "justificatif"
                        ],
                        "type": [
                            6,
                            24,
                            90
                        ]
                    },
                    {
                        "noms": [
                            "finance",
                            "revenu",
                            "salaire"
                        ],
                        "type": [
                            7,
                            25,
                            91
                        ]
                    },
                    {
                        "noms": [
                            "finance",
                            "revenu",
                            "pension"
                        ],
                        "type": [
                            7,
                            25,
                            92
                        ]
                    },
                    {
                        "noms": [
                            "finance",
                            "revenu",
                            "remboursement"
                        ],
                        "car": "",
                        "type": [
                            7,
                            25,
                            93
                        ]
                    },
                    {
                        "noms": [
                            "finance",
                            "revenu",
                            "intérêts"
                        ],
                        "type": [
                            7,
                            25,
                            94
                        ]
                    },
                    {
                        "noms": [
                            "finance",
                            "revenu",
                            "dividende"
                        ],
                        "type": [
                            7,
                            25,
                            95
                        ]
                    },
                    {
                        "noms": [
                            "finance",
                            "emprunt",
                            "capital "
                        ],
                        "type": [
                            7,
                            26,
                            96
                        ]
                    },
                    {
                        "noms": [
                            "finance",
                            "emprunt",
                            "remboursement"
                        ],
                        "car": "remboursement périodique",
                        "type": [
                            7,
                            26,
                            97
                        ]
                    },
                    {
                        "noms": [
                            "production",
                            "outillage",
                            "atelier"
                        ],
                        "type": [
                            8,
                            27,
                            98
                        ]
                    },
                    {
                        "noms": [
                            "production",
                            "outillage",
                            "engins"
                        ],
                        "type": [
                            8,
                            27,
                            99
                        ]
                    },
                    {
                        "noms": [
                            "production",
                            "quincaillerie",
                            "fixation"
                        ],
                        "type": [
                            8,
                            28,
                            100
                        ]
                    },
                    {
                        "noms": [
                            "production",
                            "électricité",
                            "prise"
                        ],
                        "type": [
                            8,
                            29,
                            220
                        ]
                    },
                    {
                        "noms": [
                            "production",
                            "électricité",
                            "interrupteur"
                        ],
                        "type": [
                            8,
                            29,
                            221
                        ]
                    },
                    {
                        "noms": [
                            "production",
                            "électricité",
                            "disjoncteur"
                        ],
                        "type": [
                            8,
                            29,
                            222
                        ]
                    },
                    {
                        "noms": [
                            "production",
                            "électricité",
                            "câble"
                        ],
                        "type": [
                            8,
                            29,
                            223
                        ]
                    },
                    {
                        "noms": [
                            "production",
                            "plomberie",
                            "câble"
                        ],
                        "type": [
                            8,
                            30,
                            223
                        ]
                    },
                    {
                        "noms": [
                            "production",
                            "plomberie",
                            "acier"
                        ],
                        "type": [
                            8,
                            30,
                            101
                        ]
                    },
                    {
                        "noms": [
                            "production",
                            "plomberie",
                            "cuivre"
                        ],
                        "type": [
                            8,
                            30,
                            102
                        ]
                    },
                    {
                        "noms": [
                            "production",
                            "plomberie",
                            "plastique"
                        ],
                        "type": [
                            8,
                            30,
                            103
                        ]
                    },
                    {
                        "noms": [
                            "production",
                            "jardinage",
                            "graines"
                        ],
                        "type": [
                            8,
                            31,
                            104
                        ]
                    },
                    {
                        "noms": [
                            "production",
                            "jardinage",
                            "plantes"
                        ],
                        "type": [
                            8,
                            31,
                            105
                        ]
                    },
                    {
                        "noms": [
                            "production",
                            "jardinage",
                            "produits"
                        ],
                        "type": [
                            8,
                            31,
                            106
                        ]
                    },
                    {
                        "noms": [
                            "finance",
                            "prêt  ",
                            "capital"
                        ],
                        "car": "somme prétée à un tiers",
                        "type": [
                            7,
                            33,
                            224
                        ]
                    },
                    {
                        "noms": [
                            "finance",
                            "prêt  ",
                            "remboursement"
                        ],
                        "car": "",
                        "type": [
                            7,
                            33,
                            225
                        ]
                    },
                    {
                        "noms": [
                            "transport",
                            "terrestre",
                            "en commun"
                        ],
                        "type": [
                            5,
                            34,
                            227
                        ]
                    },
                    {
                        "noms": [
                            "transport",
                            "terrestre",
                            "automobile"
                        ],
                        "type": [
                            5,
                            34,
                            228
                        ]
                    },
                    {
                        "noms": [
                            "transport",
                            "terrestre",
                            "poids lourd"
                        ],
                        "type": [
                            5,
                            34,
                            229
                        ]
                    },
                    {
                        "noms": [
                            "transport",
                            "terrestre",
                            "utilitaire"
                        ],
                        "type": [
                            5,
                            34,
                            230
                        ]
                    },
                    {
                        "noms": [
                            "transport",
                            "terrestre",
                            "moto"
                        ],
                        "type": [
                            5,
                            34,
                            231
                        ]
                    },
                    {
                        "noms": [
                            "transport",
                            "terrestre",
                            "scooter"
                        ],
                        "type": [
                            5,
                            34,
                            232
                        ]
                    },
                    {
                        "noms": [
                            "transport",
                            "terrestre",
                            "vélo"
                        ],
                        "type": [
                            5,
                            34,
                            233
                        ]
                    },
                    {
                        "noms": [
                            "transport",
                            "terrestre",
                            "trotinnette"
                        ],
                        "type": [
                            5,
                            34,
                            234
                        ]
                    },
                    {
                        "noms": [
                            "transport",
                            "aérien",
                            "billet"
                        ],
                        "type": [
                            5,
                            35,
                            235
                        ]
                    },
                    {
                        "noms": [
                            "transport",
                            "fluvial",
                            "bateau"
                        ],
                        "type": [
                            5,
                            36,
                            236
                        ]
                    },
                    {
                        "noms": [
                            "transport",
                            "fluvial",
                            "barque"
                        ],
                        "type": [
                            5,
                            36,
                            237
                        ]
                    },
                    {
                        "noms": [
                            "transport",
                            "maritime",
                            "bateau"
                        ],
                        "type": [
                            5,
                            37,
                            238
                        ]
                    },
                    {
                        "noms": [
                            "transport",
                            "frais",
                            "stationnement"
                        ],
                        "type": [
                            5,
                            38,
                            239
                        ]
                    },
                    {
                        "noms": [
                            "transport",
                            "frais",
                            "passage"
                        ],
                        "type": [
                            5,
                            38,
                            240
                        ]
                    },
                    {
                        "noms": [
                            "transport",
                            "frais",
                            "amendes"
                        ],
                        "type": [
                            5,
                            38,
                            241
                        ]
                    },
                    {
                        "noms": [
                            "transport",
                            "terrestre",
                            "remorque"
                        ],
                        "type": [
                            5,
                            34,
                            242
                        ]
                    },
                    {
                        "noms": [
                            "transport",
                            "terrestre",
                            "quad"
                        ],
                        "type": [
                            5,
                            34,
                            243
                        ]
                    },
                    {
                        "noms": [
                            "transport",
                            "terrestre",
                            "camping car"
                        ],
                        "type": [
                            5,
                            34,
                            244
                        ]
                    },
                    {
                        "noms": [
                            "transport",
                            "aérien",
                            "avion"
                        ],
                        "type": [
                            5,
                            35,
                            245
                        ]
                    },
                    {
                        "noms": [
                            "transport",
                            "aérien",
                            "hélicoptère"
                        ],
                        "type": [
                            5,
                            35,
                            246
                        ]
                    },
                    {
                        "noms": [
                            "transport",
                            "aérien",
                            "drone"
                        ],
                        "type": [
                            5,
                            35,
                            247
                        ]
                    },
                    {
                        "noms": [
                            "nourriture",
                            "boisson",
                            "jus"
                        ],
                        "type": [
                            1,
                            39,
                            248
                        ]
                    },
                    {
                        "noms": [
                            "nourriture",
                            "boisson",
                            "lait"
                        ],
                        "type": [
                            1,
                            39,
                            249
                        ]
                    },
                    {
                        "noms": [
                            "nourriture",
                            "boisson",
                            "vin"
                        ],
                        "type": [
                            1,
                            39,
                            250
                        ]
                    },
                    {
                        "noms": [
                            "nourriture",
                            "boisson",
                            "soda"
                        ],
                        "type": [
                            1,
                            39,
                            251
                        ]
                    },
                    {
                        "noms": [
                            "nourriture",
                            "boisson",
                            "café"
                        ],
                        "type": [
                            1,
                            39,
                            252
                        ]
                    },
                    {
                        "noms": [
                            "nourriture",
                            "boisson",
                            "infusion"
                        ],
                        "type": [
                            1,
                            39,
                            254
                        ]
                    },
                    {
                        "noms": [
                            "nourriture",
                            "boisson",
                            "chocolat"
                        ],
                        "type": [
                            1,
                            39,
                            255
                        ]
                    }
                ]
            },
            {
                "items": [
                    {
                        "type": [
                            1,
                            1,
                            1,
                            1
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "lait"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            2
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "yaourt"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            4
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "viande"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            2,
                            5
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "chèvre",
                            "fromage"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            3,
                            6
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "brebis",
                            "fromage"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            4,
                            7
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "mouton",
                            "viande"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            5,
                            8
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "boeuf",
                            "viande"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            6,
                            9
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "veau",
                            "viande"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            7,
                            10
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "porc",
                            "viande"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            8,
                            11
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "cheval",
                            "viande hachée"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            9,
                            12
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "volaille",
                            "oeufs"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            9,
                            13
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "volaille",
                            "viande"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            10,
                            14
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "charcuterie",
                            "saucisse"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            10,
                            15
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "charcuterie",
                            "andouille"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            10,
                            16
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "charcuterie",
                            "jambon"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            11,
                            17
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "poisson",
                            "cabillaud"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            11,
                            18
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "poisson",
                            "dorade"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            11,
                            19
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "poisson",
                            "églefin"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            11,
                            20
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "poisson",
                            "lieu"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            11,
                            21
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "poisson",
                            "limande"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            11,
                            22
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "poisson",
                            "maquereau"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            11,
                            23
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "poisson",
                            "merlan"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            11,
                            24
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "poisson",
                            "rascasse"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            11,
                            25
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "poisson",
                            "sardine"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            11,
                            26
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "poisson",
                            "saumon"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            11,
                            27
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "poisson",
                            "sole"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            11,
                            28
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "poisson",
                            "tacaud"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            11,
                            29
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "poisson",
                            "turbot"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            11,
                            30
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "poisson",
                            "thon"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            11,
                            31
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "poisson",
                            "vive"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            12,
                            32
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "crustacés",
                            "araignée"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            12,
                            33
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "crustacés",
                            "crevette"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            12,
                            34
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "crustacés",
                            "crabe"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            12,
                            35
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "crustacés",
                            "homard"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            12,
                            36
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "crustacés",
                            "langouste"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            12,
                            37
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "crustacés",
                            "limule"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            13,
                            38
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "coquillages",
                            "bulot"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            13,
                            39
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "coquillages",
                            "clam"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            13,
                            40
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "coquillages",
                            "coque"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            13,
                            41
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "coquillages",
                            "couteau"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            13,
                            42
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "coquillages",
                            "huîtres"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            13,
                            43
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "coquillages",
                            "moules"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            13,
                            44
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "coquillages",
                            "palourde"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            14,
                            45
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "insectes",
                            "criquet"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            14,
                            46
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "insectes",
                            "ver"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            50
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à noyau"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            53
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "carotte"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            54
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "céleri"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            55
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "pomme de terre"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            56
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "radis"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            57
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "ail"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            58
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "oignon"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            59
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "échalotte"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            60
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "poireau"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            61
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "choux"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            62
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "salade"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            63
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "avocat"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            64
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "aubergine"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            65
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "cornichon"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            66
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "courgette"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            67
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "pumpkin"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            68
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "butternot"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            69
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "citrouille"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            70
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "potiron"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            71
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "tomate"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            72
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "haricot"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            17,
                            73
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "champignons",
                            "de Paris"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            17,
                            74
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "champignons",
                            "cêpes"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            17,
                            75
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "champignons",
                            "girolles"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            17,
                            76
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "champignons",
                            "pleurottes"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            19,
                            77
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumineuses",
                            "arachide"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            19,
                            78
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumineuses",
                            "fèves"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            19,
                            79
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumineuses",
                            "haricot sec"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            19,
                            80
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumineuses",
                            "lentilles"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            19,
                            81
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumineuses",
                            "petit pois"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            19,
                            82
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumineuses",
                            "pois chiche"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            19,
                            83
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumineuses",
                            "soja"
                        ]
                    },
                    {
                        "type": [
                            1,
                            3,
                            21,
                            84
                        ],
                        "noms": [
                            "nourriture",
                            "cuisinée",
                            "choucroute",
                            "crue"
                        ]
                    },
                    {
                        "type": [
                            1,
                            3,
                            21,
                            85
                        ],
                        "noms": [
                            "nourriture",
                            "cuisinée",
                            "choucroute",
                            "cuite"
                        ]
                    },
                    {
                        "type": [
                            1,
                            3,
                            21,
                            86
                        ],
                        "noms": [
                            "nourriture",
                            "cuisinée",
                            "choucroute",
                            "garnie"
                        ]
                    },
                    {
                        "type": [
                            1,
                            3,
                            22,
                            87
                        ],
                        "noms": [
                            "nourriture",
                            "cuisinée",
                            "pizza",
                            "napolitaine"
                        ],
                        "use": "Pour obtenir le label vera pizza napoletana, il faut respecter un règlement international. Une version moderne existe, c’est la pizza napolitaine contemporaine. Elle se différencie par son processus de fabrication légèrement différent. Dans un four à bois à une température élevée entre 430°c et 480°, la cuisson dure environ 60 à 90 secondes.",
                        "car": "Inventée à Naples, en Italie, au 18ème siècle, considérée comme la pizza originale, elle est inscrite sur la liste du patrimoine culturel immatériel de l’humanité de l’UNESCO en 2017. Sa recette traditionnelle la fait avec des ingrédients simples mais de haute qualité : farine, eau, levure et sel. Elle doit avoir une croûte légère et croustillante, une garniture savoureuse et une pâte moelleuse au centre."
                    },
                    {
                        "type": [
                            1,
                            3,
                            22,
                            88
                        ],
                        "noms": [
                            "nourriture",
                            "cuisinée",
                            "pizza",
                            "margarita"
                        ],
                        "car": "200g de mozzarella fraîche, coupée en tranches400g de tomates pelées, concasséesQuelques feuilles de basilic frais"
                    },
                    {
                        "type": [
                            1,
                            3,
                            22,
                            89
                        ],
                        "noms": [
                            "nourriture",
                            "cuisinée",
                            "pizza",
                            "regina"
                        ],
                        "car": "Sauce tomate bien étalée, 1 cm du bord.Mozzarella en touches espacées : elle va s’étaler en cuisant.Champignons répartis uniformément.Jambon en volutes pour créer du relief.Olives puis une pincée d’origan."
                    },
                    {
                        "type": [
                            1,
                            3,
                            22,
                            90
                        ],
                        "noms": [
                            "nourriture",
                            "cuisinée",
                            "pizza",
                            "veggie"
                        ]
                    },
                    {
                        "type": [
                            2,
                            5,
                            25,
                            91
                        ],
                        "noms": [
                            "habitat",
                            "location",
                            "non meublé",
                            "loyer"
                        ]
                    },
                    {
                        "type": [
                            2,
                            5,
                            25,
                            92
                        ],
                        "noms": [
                            "habitat",
                            "location",
                            "non meublé",
                            "caution"
                        ]
                    },
                    {
                        "type": [
                            2,
                            5,
                            26,
                            93
                        ],
                        "noms": [
                            "habitat",
                            "location",
                            "meublé",
                            "loyer"
                        ]
                    },
                    {
                        "type": [
                            2,
                            5,
                            26,
                            94
                        ],
                        "noms": [
                            "habitat",
                            "location",
                            "meublé",
                            "caution"
                        ]
                    },
                    {
                        "type": [
                            2,
                            5,
                            27,
                            95
                        ],
                        "noms": [
                            "habitat",
                            "location",
                            "garage",
                            "loyer"
                        ]
                    },
                    {
                        "type": [
                            2,
                            5,
                            27,
                            96
                        ],
                        "noms": [
                            "habitat",
                            "location",
                            "garage",
                            "caution"
                        ]
                    },
                    {
                        "type": [
                            2,
                            5,
                            28,
                            97
                        ],
                        "noms": [
                            "habitat",
                            "location",
                            "parking",
                            "loyer"
                        ]
                    },
                    {
                        "type": [
                            2,
                            5,
                            28,
                            98
                        ],
                        "noms": [
                            "habitat",
                            "location",
                            "parking",
                            "caution"
                        ]
                    },
                    {
                        "type": [
                            2,
                            5,
                            29,
                            99
                        ],
                        "noms": [
                            "habitat",
                            "location",
                            "stockage",
                            "loyer"
                        ]
                    },
                    {
                        "type": [
                            2,
                            5,
                            29,
                            100
                        ],
                        "noms": [
                            "habitat",
                            "location",
                            "stockage",
                            "caution"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            33,
                            101
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "cuisson",
                            "four"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            33,
                            102
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "cuisson",
                            "plaques"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            33,
                            103
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "cuisson",
                            "gazinière"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            33,
                            104
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "cuisson",
                            "spécial"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            33,
                            105
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "cuisson",
                            "hotte"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            34,
                            106
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "froid",
                            "réfrigérateur"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            34,
                            107
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "froid",
                            "congélateur"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            35,
                            108
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "nettoyage",
                            "lave-linge"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            35,
                            109
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "nettoyage",
                            "lave-vaisselle"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            35,
                            110
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "nettoyage",
                            "aspirateur"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            36,
                            111
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "mobilier",
                            "siège"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            36,
                            112
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "mobilier",
                            "chaise"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            36,
                            113
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "mobilier",
                            "tabouret"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            36,
                            114
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "mobilier",
                            "fauteuil"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            36,
                            115
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "mobilier",
                            "canapé"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            36,
                            116
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "mobilier",
                            "pouf"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            36,
                            117
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "mobilier",
                            "table"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            36,
                            118
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "mobilier",
                            "armoire"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            36,
                            119
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "mobilier",
                            "lit"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            36,
                            120
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "mobilier",
                            "bureau"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            36,
                            121
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "mobilier",
                            "tapis"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            36,
                            122
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "mobilier",
                            "vitrine"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            37,
                            123
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "chauffage",
                            "radiateur"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            37,
                            124
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "chauffage",
                            "chaudière"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            37,
                            125
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "chauffage",
                            "pompe à chaleur"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            37,
                            126
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "chauffage",
                            "foyer bois"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            38,
                            127
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "sanitaire",
                            "lavabo"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            38,
                            128
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "sanitaire",
                            "évier"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            38,
                            129
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "sanitaire",
                            "douche"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            38,
                            130
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "sanitaire",
                            "baignoire"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            38,
                            131
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "sanitaire",
                            "robinet"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            38,
                            132
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "sanitaire",
                            "WC"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            39,
                            133
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "luminaire",
                            "plafonier"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            39,
                            134
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "luminaire",
                            "lampe de table"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            39,
                            135
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "luminaire",
                            "applique"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            39,
                            136
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "luminaire",
                            "lampe de sol"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            39,
                            137
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "luminaire",
                            "éclairage externe"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            40,
                            138
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "décor",
                            "revêtement"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            40,
                            139
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "décor",
                            "peinture"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            40,
                            140
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "décor",
                            "papier-peint"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            40,
                            141
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "décor",
                            "tissu mural"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            40,
                            142
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "décor",
                            "carrelage"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            40,
                            143
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "décor",
                            "parquet"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            40,
                            144
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "décor",
                            "objet décoratif"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            41,
                            145
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "ouverture",
                            "porte"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            41,
                            146
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "ouverture",
                            "fenêtre"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            42,
                            147
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "électrique",
                            "prise"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            42,
                            148
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "électrique",
                            "interrupteur"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            42,
                            149
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "électrique",
                            "compteur"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            42,
                            150
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "électrique",
                            "disjoncteur"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            42,
                            151
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "électrique",
                            "tableau"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            42,
                            152
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "électrique",
                            "câble"
                        ]
                    },
                    {
                        "type": [
                            2,
                            10,
                            43,
                            153
                        ],
                        "noms": [
                            "habitat",
                            "consommable",
                            "entretien",
                            "lessive "
                        ]
                    },
                    {
                        "type": [
                            2,
                            10,
                            43,
                            154
                        ],
                        "noms": [
                            "habitat",
                            "consommable",
                            "entretien",
                            "savon"
                        ]
                    },
                    {
                        "type": [
                            2,
                            10,
                            43,
                            155
                        ],
                        "noms": [
                            "habitat",
                            "consommable",
                            "entretien",
                            "douche"
                        ]
                    },
                    {
                        "type": [
                            2,
                            10,
                            44,
                            156
                        ],
                        "noms": [
                            "habitat",
                            "consommable",
                            "eau",
                            "minérale"
                        ]
                    },
                    {
                        "type": [
                            2,
                            10,
                            44,
                            157
                        ],
                        "noms": [
                            "habitat",
                            "consommable",
                            "eau",
                            "robinet"
                        ]
                    },
                    {
                        "type": [
                            2,
                            10,
                            44,
                            158
                        ],
                        "noms": [
                            "habitat",
                            "consommable",
                            "eau",
                            "non potable"
                        ]
                    },
                    {
                        "type": [
                            2,
                            10,
                            45,
                            159
                        ],
                        "noms": [
                            "habitat",
                            "consommable",
                            "énergie",
                            "électricité"
                        ]
                    },
                    {
                        "type": [
                            2,
                            10,
                            45,
                            160
                        ],
                        "noms": [
                            "habitat",
                            "consommable",
                            "énergie",
                            "hydrogène"
                        ]
                    },
                    {
                        "type": [
                            2,
                            10,
                            45,
                            161
                        ],
                        "noms": [
                            "habitat",
                            "consommable",
                            "énergie",
                            "gaz"
                        ]
                    },
                    {
                        "type": [
                            2,
                            10,
                            45,
                            162
                        ],
                        "noms": [
                            "habitat",
                            "consommable",
                            "énergie",
                            "essence"
                        ]
                    },
                    {
                        "type": [
                            2,
                            10,
                            45,
                            163
                        ],
                        "noms": [
                            "habitat",
                            "consommable",
                            "énergie",
                            "gasoil"
                        ]
                    },
                    {
                        "type": [
                            2,
                            10,
                            45,
                            164
                        ],
                        "noms": [
                            "habitat",
                            "consommable",
                            "énergie",
                            "GPL"
                        ]
                    },
                    {
                        "type": [
                            2,
                            10,
                            45,
                            165
                        ],
                        "noms": [
                            "habitat",
                            "consommable",
                            "énergie",
                            "fuel"
                        ]
                    },
                    {
                        "type": [
                            2,
                            10,
                            45,
                            166
                        ],
                        "noms": [
                            "habitat",
                            "consommable",
                            "énergie",
                            "bois"
                        ]
                    },
                    {
                        "type": [
                            2,
                            10,
                            45,
                            167
                        ],
                        "noms": [
                            "habitat",
                            "consommable",
                            "énergie",
                            "charbon de bois "
                        ]
                    },
                    {
                        "type": [
                            2,
                            10,
                            45,
                            168
                        ],
                        "noms": [
                            "habitat",
                            "consommable",
                            "énergie",
                            "stère "
                        ]
                    },
                    {
                        "type": [
                            2,
                            10,
                            45,
                            169
                        ],
                        "noms": [
                            "habitat",
                            "consommable",
                            "énergie",
                            "pelé "
                        ]
                    },
                    {
                        "type": [
                            2,
                            10,
                            45,
                            170
                        ],
                        "noms": [
                            "habitat",
                            "consommable",
                            "énergie",
                            "charbon"
                        ]
                    },
                    {
                        "type": [
                            2,
                            10,
                            46,
                            171
                        ],
                        "noms": [
                            "habitat",
                            "consommable",
                            "telecom",
                            "mobile"
                        ]
                    },
                    {
                        "type": [
                            2,
                            10,
                            46,
                            172
                        ],
                        "noms": [
                            "habitat",
                            "consommable",
                            "telecom",
                            "terrestre "
                        ]
                    },
                    {
                        "type": [
                            2,
                            10,
                            46,
                            173
                        ],
                        "noms": [
                            "habitat",
                            "consommable",
                            "telecom",
                            "satellite "
                        ]
                    },
                    {
                        "type": [
                            2,
                            10,
                            46,
                            174
                        ],
                        "noms": [
                            "habitat",
                            "consommable",
                            "telecom",
                            "internet"
                        ]
                    },
                    {
                        "type": [
                            2,
                            10,
                            46,
                            175
                        ],
                        "noms": [
                            "habitat",
                            "consommable",
                            "telecom",
                            "cloud"
                        ]
                    },
                    {
                        "type": [
                            4,
                            16,
                            63,
                            176
                        ],
                        "noms": [
                            "solidarité",
                            "assurance",
                            "habitation",
                            "propriétaire"
                        ]
                    },
                    {
                        "type": [
                            4,
                            16,
                            63,
                            177
                        ],
                        "noms": [
                            "solidarité",
                            "assurance",
                            "habitation",
                            "locataire"
                        ]
                    },
                    {
                        "type": [
                            4,
                            17,
                            65,
                            178
                        ],
                        "noms": [
                            "solidarité",
                            "cotisation",
                            "sociale",
                            "URSSAF"
                        ]
                    },
                    {
                        "type": [
                            4,
                            17,
                            65,
                            179
                        ],
                        "noms": [
                            "solidarité",
                            "cotisation",
                            "sociale",
                            "CSG"
                        ]
                    },
                    {
                        "type": [
                            6,
                            22,
                            79,
                            190
                        ],
                        "noms": [
                            "connaissance",
                            "loisir",
                            "streaming",
                            "abonnement"
                        ]
                    },
                    {
                        "type": [
                            6,
                            22,
                            79,
                            191
                        ],
                        "noms": [
                            "connaissance",
                            "loisir",
                            "streaming",
                            "location"
                        ]
                    },
                    {
                        "type": [
                            6,
                            22,
                            79,
                            192
                        ],
                        "noms": [
                            "connaissance",
                            "loisir",
                            "streaming",
                            "équipement"
                        ]
                    },
                    {
                        "type": [
                            6,
                            22,
                            80,
                            193
                        ],
                        "noms": [
                            "connaissance",
                            "loisir",
                            "librairie",
                            "livre"
                        ]
                    },
                    {
                        "type": [
                            6,
                            22,
                            80,
                            194
                        ],
                        "noms": [
                            "connaissance",
                            "loisir",
                            "librairie",
                            "équipement"
                        ]
                    },
                    {
                        "type": [
                            6,
                            22,
                            81,
                            195
                        ],
                        "noms": [
                            "connaissance",
                            "loisir",
                            "musique",
                            "disque"
                        ]
                    },
                    {
                        "type": [
                            6,
                            22,
                            81,
                            196
                        ],
                        "noms": [
                            "connaissance",
                            "loisir",
                            "musique",
                            "instrument"
                        ]
                    },
                    {
                        "type": [
                            6,
                            22,
                            85,
                            197
                        ],
                        "noms": [
                            "connaissance",
                            "loisir",
                            "spectacle",
                            "cinéma"
                        ]
                    },
                    {
                        "type": [
                            6,
                            22,
                            85,
                            198
                        ],
                        "noms": [
                            "connaissance",
                            "loisir",
                            "spectacle",
                            "théâtre"
                        ]
                    },
                    {
                        "type": [
                            6,
                            22,
                            85,
                            199
                        ],
                        "noms": [
                            "connaissance",
                            "loisir",
                            "spectacle",
                            "concert"
                        ]
                    },
                    {
                        "type": [
                            6,
                            22,
                            86,
                            200
                        ],
                        "noms": [
                            "connaissance",
                            "loisir",
                            "tourisme",
                            "voyage"
                        ]
                    },
                    {
                        "type": [
                            6,
                            22,
                            86,
                            201
                        ],
                        "noms": [
                            "connaissance",
                            "loisir",
                            "tourisme",
                            "musée"
                        ]
                    },
                    {
                        "type": [
                            6,
                            22,
                            86,
                            202
                        ],
                        "noms": [
                            "connaissance",
                            "loisir",
                            "tourisme",
                            "équipement"
                        ]
                    },
                    {
                        "type": [
                            6,
                            22,
                            87,
                            203
                        ],
                        "noms": [
                            "connaissance",
                            "loisir",
                            "attraction",
                            "parc"
                        ]
                    },
                    {
                        "type": [
                            6,
                            22,
                            87,
                            204
                        ],
                        "noms": [
                            "connaissance",
                            "loisir",
                            "attraction",
                            "forain"
                        ]
                    },
                    {
                        "type": [
                            6,
                            22,
                            87,
                            205
                        ],
                        "noms": [
                            "connaissance",
                            "loisir",
                            "attraction",
                            "équipement"
                        ]
                    },
                    {
                        "type": [
                            6,
                            22,
                            88,
                            206
                        ],
                        "noms": [
                            "connaissance",
                            "loisir",
                            "sport",
                            "abonnement"
                        ]
                    },
                    {
                        "type": [
                            6,
                            22,
                            88,
                            207
                        ],
                        "noms": [
                            "connaissance",
                            "loisir",
                            "sport",
                            "équipement"
                        ]
                    },
                    {
                        "type": [
                            6,
                            24,
                            90,
                            208
                        ],
                        "noms": [
                            "connaissance",
                            "data",
                            "justificatif",
                            "contrat"
                        ]
                    },
                    {
                        "type": [
                            6,
                            24,
                            90,
                            209
                        ],
                        "noms": [
                            "connaissance",
                            "data",
                            "justificatif",
                            "facture"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            210
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "manuel"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            211
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "électrique"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            212
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "pneumatique"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            99,
                            213
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "engins",
                            "terrassement"
                        ]
                    },
                    {
                        "type": [
                            8,
                            28,
                            100,
                            214
                        ],
                        "noms": [
                            "production",
                            "quincaillerie",
                            "fixation",
                            "clou"
                        ]
                    },
                    {
                        "type": [
                            8,
                            28,
                            100,
                            215
                        ],
                        "noms": [
                            "production",
                            "quincaillerie",
                            "fixation",
                            "vis"
                        ]
                    },
                    {
                        "type": [
                            8,
                            28,
                            100,
                            216
                        ],
                        "noms": [
                            "production",
                            "quincaillerie",
                            "fixation",
                            "boulon"
                        ]
                    },
                    {
                        "type": [
                            8,
                            28,
                            100,
                            217
                        ],
                        "noms": [
                            "production",
                            "quincaillerie",
                            "fixation",
                            "écrou"
                        ]
                    },
                    {
                        "type": [
                            8,
                            28,
                            100,
                            218
                        ],
                        "noms": [
                            "production",
                            "quincaillerie",
                            "fixation",
                            "cheville"
                        ]
                    },
                    {
                        "type": [
                            8,
                            28,
                            100,
                            219
                        ],
                        "noms": [
                            "production",
                            "quincaillerie",
                            "fixation",
                            "équerre"
                        ]
                    },
                    {
                        "type": [
                            8,
                            30,
                            101,
                            224
                        ],
                        "noms": [
                            "production",
                            "plomberie",
                            "acier",
                            "tuyau"
                        ]
                    },
                    {
                        "type": [
                            8,
                            30,
                            101,
                            225
                        ],
                        "noms": [
                            "production",
                            "plomberie",
                            "acier",
                            "raccord"
                        ]
                    },
                    {
                        "type": [
                            8,
                            30,
                            102,
                            226
                        ],
                        "noms": [
                            "production",
                            "plomberie",
                            "cuivre",
                            "tuyau"
                        ]
                    },
                    {
                        "type": [
                            8,
                            30,
                            102,
                            227
                        ],
                        "noms": [
                            "production",
                            "plomberie",
                            "cuivre",
                            "raccord"
                        ]
                    },
                    {
                        "type": [
                            8,
                            30,
                            103,
                            228
                        ],
                        "noms": [
                            "production",
                            "plomberie",
                            "plastique",
                            "tuyau"
                        ]
                    },
                    {
                        "type": [
                            8,
                            30,
                            103,
                            229
                        ],
                        "noms": [
                            "production",
                            "plomberie",
                            "plastique",
                            "raccord"
                        ]
                    },
                    {
                        "type": [
                            8,
                            31,
                            106,
                            230
                        ],
                        "noms": [
                            "production",
                            "jardinage",
                            "produits",
                            "terreau"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            18,
                            231
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "algues",
                            "brunes"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            18,
                            232
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "algues",
                            "rouges"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            18,
                            233
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "algues",
                            "vertes"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            18,
                            234
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "algues",
                            "spiruline"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            37,
                            235
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "chauffage",
                            "chauffe-eau"
                        ]
                    },
                    {
                        "type": [
                            1,
                            3,
                            22,
                            236
                        ],
                        "noms": [
                            "nourriture",
                            "cuisinée",
                            "pizza",
                            "calzone"
                        ],
                        "car": "pizza pliée en deux, farcie de tomate, mozarella, champignons et jambon"
                    },
                    {
                        "type": [
                            1,
                            3,
                            22,
                            237
                        ],
                        "noms": [
                            "nourriture",
                            "cuisinée",
                            "pizza",
                            "quatre fromages"
                        ],
                        "car": "tomate, mozzarella, gorgonzola, fontina, parmesan"
                    },
                    {
                        "type": [
                            1,
                            3,
                            22,
                            238
                        ],
                        "noms": [
                            "nourriture",
                            "cuisinée",
                            "pizza",
                            "capricieuse"
                        ],
                        "car": "sauce tomate, mozzarella, jambon cuit, champignons de Paris, artichauts, olives noires."
                    },
                    {
                        "type": [
                            1,
                            3,
                            22,
                            239
                        ],
                        "noms": [
                            "nourriture",
                            "cuisinée",
                            "pizza",
                            "hawaïenne"
                        ],
                        "car": " sauce tomate, mozzarella, jambon cuit, ananas "
                    },
                    {
                        "type": [
                            1,
                            3,
                            22,
                            240
                        ],
                        "noms": [
                            "nourriture",
                            "cuisinée",
                            "pizza",
                            "pepperoni"
                        ],
                        "car": "sauce tomate, mozzarella, salami épicé (pepperoni)"
                    },
                    {
                        "type": [
                            1,
                            1,
                            14,
                            241
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "insectes",
                            "scorpion"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            14,
                            242
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "insectes",
                            "araignée"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            14,
                            243
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "insectes",
                            "grillon"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            14,
                            244
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "insectes",
                            "chenille"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            14,
                            245
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "insectes",
                            "scarabée"
                        ]
                    },
                    {
                        "type": [
                            7,
                            25,
                            93,
                            246
                        ],
                        "noms": [
                            "finance",
                            "revenu",
                            "remboursement",
                            "sinistre"
                        ],
                        "car": "remboursement d'un sinistre par une assurance"
                    },
                    {
                        "type": [
                            7,
                            25,
                            93,
                            247
                        ],
                        "noms": [
                            "finance",
                            "revenu",
                            "remboursement",
                            "frais"
                        ],
                        "car": "remboursement de frais professionnels"
                    },
                    {
                        "type": [
                            1,
                            2,
                            17,
                            249
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "champignons",
                            "sitaké"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            228,
                            250
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "automobile",
                            "achat"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            228,
                            251
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "automobile",
                            "entretien"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            228,
                            253
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "automobile",
                            "location"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            229,
                            254
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "poids lourd",
                            "achat"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            229,
                            255
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "poids lourd",
                            "location"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            229,
                            256
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "poids lourd",
                            "entretien"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            230,
                            258
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "utilitaire",
                            "achat"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            230,
                            259
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "utilitaire",
                            "entretien"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            230,
                            260
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "utilitaire",
                            "location"
                        ]
                    },
                    {
                        "type": [
                            5,
                            37,
                            238,
                            262
                        ],
                        "noms": [
                            "transport",
                            "maritime",
                            "bateau",
                            "achat"
                        ]
                    },
                    {
                        "type": [
                            5,
                            37,
                            238,
                            263
                        ],
                        "noms": [
                            "transport",
                            "maritime",
                            "bateau",
                            "entretien"
                        ]
                    },
                    {
                        "type": [
                            5,
                            37,
                            238,
                            264
                        ],
                        "noms": [
                            "transport",
                            "maritime",
                            "bateau",
                            "réparation"
                        ]
                    },
                    {
                        "type": [
                            5,
                            37,
                            238,
                            265
                        ],
                        "noms": [
                            "transport",
                            "maritime",
                            "bateau",
                            "attache"
                        ]
                    },
                    {
                        "type": [
                            5,
                            37,
                            238,
                            266
                        ],
                        "noms": [
                            "transport",
                            "maritime",
                            "bateau",
                            "location"
                        ]
                    },
                    {
                        "type": [
                            5,
                            36,
                            236,
                            267
                        ],
                        "noms": [
                            "transport",
                            "fluvial",
                            "bateau",
                            "achat"
                        ]
                    },
                    {
                        "type": [
                            5,
                            36,
                            236,
                            268
                        ],
                        "noms": [
                            "transport",
                            "fluvial",
                            "bateau",
                            "entretien"
                        ]
                    },
                    {
                        "type": [
                            5,
                            36,
                            236,
                            269
                        ],
                        "noms": [
                            "transport",
                            "fluvial",
                            "bateau",
                            "réparation"
                        ]
                    },
                    {
                        "type": [
                            5,
                            36,
                            236,
                            270
                        ],
                        "noms": [
                            "transport",
                            "fluvial",
                            "bateau",
                            "location"
                        ]
                    },
                    {
                        "type": [
                            5,
                            36,
                            237,
                            271
                        ],
                        "noms": [
                            "transport",
                            "fluvial",
                            "barque",
                            "achat"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            231,
                            276
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "moto",
                            "achat"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            231,
                            277
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "moto",
                            "entretien"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            233,
                            279
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "vélo",
                            "achat"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            233,
                            280
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "vélo",
                            "location"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            242,
                            281
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "remorque",
                            "achat"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            242,
                            282
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "remorque",
                            "entretien"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            242,
                            283
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "remorque",
                            "réparation"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            231,
                            284
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "moto",
                            "location"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            233,
                            285
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "vélo",
                            "entretien"
                        ]
                    },
                    {
                        "type": [
                            5,
                            35,
                            245,
                            286
                        ],
                        "noms": [
                            "transport",
                            "aérien",
                            "avion",
                            "achat"
                        ]
                    },
                    {
                        "type": [
                            5,
                            35,
                            245,
                            287
                        ],
                        "noms": [
                            "transport",
                            "aérien",
                            "avion",
                            "location"
                        ]
                    },
                    {
                        "type": [
                            1,
                            39,
                            254,
                            288
                        ],
                        "noms": [
                            "nourriture",
                            "boisson",
                            "infusion",
                            "thé"
                        ]
                    },
                    {
                        "type": [
                            1,
                            39,
                            254,
                            289
                        ],
                        "noms": [
                            "nourriture",
                            "boisson",
                            "infusion",
                            "verveine"
                        ]
                    },
                    {
                        "type": [
                            1,
                            39,
                            254,
                            290
                        ],
                        "noms": [
                            "nourriture",
                            "boisson",
                            "infusion",
                            "camomille"
                        ]
                    },
                    {
                        "type": [
                            1,
                            39,
                            248,
                            291
                        ],
                        "noms": [
                            "nourriture",
                            "boisson",
                            "jus",
                            "tomate"
                        ]
                    },
                    {
                        "type": [
                            1,
                            39,
                            248,
                            292
                        ],
                        "noms": [
                            "nourriture",
                            "boisson",
                            "jus",
                            "pomme"
                        ]
                    }
                ]
            },
            {
                "items": [
                    {
                        "type": [
                            1,
                            1,
                            1,
                            1,
                            1
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "lait",
                            "frais"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            1,
                            2
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "lait",
                            "caillé"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            2,
                            3
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "yaourt",
                            "nature"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            2,
                            4
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "yaourt",
                            "aromatisé"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            5
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "frais"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            6
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "croûte fleurie"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            7
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "croûte lavée"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            8
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "pâte persillée"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            9
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "pâte préssée"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            10
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "pâte pressée cuite"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            2,
                            5,
                            11
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "chèvre",
                            "fromage",
                            "Chabichou"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            2,
                            5,
                            12
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "chèvre",
                            "fromage",
                            "Anneau du Vic Bilh"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            2,
                            5,
                            13
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "chèvre",
                            "fromage",
                            "Bichonnet"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            2,
                            5,
                            14
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "chèvre",
                            "fromage",
                            "Briquette"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            2,
                            5,
                            15
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "chèvre",
                            "fromage",
                            "Charolais"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            2,
                            5,
                            16
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "chèvre",
                            "fromage",
                            "Cosne du Morvan"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            2,
                            5,
                            17
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "chèvre",
                            "fromage",
                            "Crottin de Chavignol"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            2,
                            5,
                            18
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "chèvre",
                            "fromage",
                            "Crottin de Cocumont"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            2,
                            5,
                            19
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "chèvre",
                            "fromage",
                            "Pélardon"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            2,
                            5,
                            20
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "chèvre",
                            "fromage",
                            "Pouligny-Saint-Pierre"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            2,
                            5,
                            21
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "chèvre",
                            "fromage",
                            "Selles-sur-Cher"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            2,
                            5,
                            22
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "chèvre",
                            "fromage",
                            "Sainte-Maure de Touraine"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            2,
                            5,
                            23
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "chèvre",
                            "fromage",
                            "Taupinière"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            2,
                            5,
                            24
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "chèvre",
                            "fromage",
                            "Tomme de chèvre des Pyrénées"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            2,
                            5,
                            25
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "chèvre",
                            "fromage",
                            "Tomme de chèvre de Savoie"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            2,
                            5,
                            26
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "chèvre",
                            "fromage",
                            "Valençay"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            3,
                            6,
                            27
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "brebis",
                            "fromage",
                            "Ossau-Iraty"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            3,
                            6,
                            28
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "brebis",
                            "fromage",
                            "Saulzais"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            3,
                            6,
                            29
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "brebis",
                            "fromage",
                            "Tomme du Pays Basque"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            3,
                            6,
                            30
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "brebis",
                            "fromage",
                            "Tomme du Béarn"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            9,
                            13,
                            31
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "volaille",
                            "viande",
                            "poulet"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            9,
                            13,
                            32
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "volaille",
                            "viande",
                            "chapon"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            9,
                            13,
                            33
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "volaille",
                            "viande",
                            "canard"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            9,
                            13,
                            34
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "volaille",
                            "viande",
                            "pintade"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            10,
                            14,
                            35
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "charcuterie",
                            "saucisse",
                            "chipolata"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            10,
                            14,
                            36
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "charcuterie",
                            "saucisse",
                            "merguez"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            10,
                            14,
                            37
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "charcuterie",
                            "saucisse",
                            "chorizo"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            10,
                            14,
                            38
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "charcuterie",
                            "saucisse",
                            "diot"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            10,
                            14,
                            39
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "charcuterie",
                            "saucisse",
                            "Francfort"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            10,
                            14,
                            40
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "charcuterie",
                            "saucisse",
                            "Toulouse"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            10,
                            14,
                            41
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "charcuterie",
                            "saucisse",
                            "Monbéliard"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            10,
                            14,
                            42
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "charcuterie",
                            "saucisse",
                            "fumée"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            10,
                            15,
                            43
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "charcuterie",
                            "andouille",
                            "d'Aire"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            10,
                            15,
                            44
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "charcuterie",
                            "andouille",
                            "de Guémené"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            10,
                            15,
                            45
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "charcuterie",
                            "andouille",
                            "de Vire"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            10,
                            16,
                            46
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "charcuterie",
                            "jambon",
                            "sec"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            10,
                            16,
                            47
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "charcuterie",
                            "jambon",
                            "cuit"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            10,
                            16,
                            48
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "charcuterie",
                            "jambon",
                            "fumé"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            10,
                            16,
                            49
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "charcuterie",
                            "jambon",
                            "sans nitrite"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            11,
                            20,
                            50
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "poisson",
                            "lieu",
                            "jaune"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            11,
                            20,
                            51
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "poisson",
                            "lieu",
                            "noir"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            11,
                            26,
                            52
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "poisson",
                            "saumon",
                            "d'Ecosse"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            11,
                            26,
                            53
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "poisson",
                            "saumon",
                            "d'Irlande"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            11,
                            26,
                            54
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "poisson",
                            "saumon",
                            "de Norvège"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            12,
                            33,
                            55
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "crustacés",
                            "crevette",
                            "grise"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            12,
                            33,
                            56
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "crustacés",
                            "crevette",
                            "rose"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            12,
                            34,
                            57
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "crustacés",
                            "crabe",
                            "tourteau"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            12,
                            34,
                            58
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "crustacés",
                            "crabe",
                            "étrille"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            13,
                            42,
                            59
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "coquillages",
                            "huîtres",
                            "plates"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            13,
                            42,
                            60
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "coquillages",
                            "huîtres",
                            "creuses"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            13,
                            43,
                            61
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "coquillages",
                            "moules",
                            "de Hollande"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            13,
                            43,
                            62
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "coquillages",
                            "moules",
                            "bouchot"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            63
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "citron"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            64
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "clémentine"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            65
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "mandarine"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            66
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "orange"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            67
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "pamplemousse"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            68
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "cassis"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            69
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "groseille"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            70
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "fraise"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            71
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "framboise"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            72
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "myrtille"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            73
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "mûre"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            74
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "ananas"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            75
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "avocat"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            76
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "banane"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            77
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "datte"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            78
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "kiwi"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            79
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "mangue"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            80
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "grenade"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            81
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "fruit de la passion"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            82
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "goyave"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            83
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "papaye"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            84
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "litchi"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            50,
                            85
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à noyau",
                            "abricot"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            50,
                            86
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à noyau",
                            "mirabelle"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            50,
                            87
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à noyau",
                            "nectarine"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            50,
                            88
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à noyau",
                            "pêche"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            50,
                            89
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à noyau",
                            "prune"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            50,
                            90
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à noyau",
                            "cerise"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            91
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "figue"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            92
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "coing"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            93
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "pomme"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            94
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "poire"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            95
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "raisin"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            96
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "châtaigne"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            97
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "amande"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            98
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "noisette"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            99
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "noix de Grenoble"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            100
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "noix de pécan"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            101
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "noix de cajou"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            102
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "noix de coco"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            103
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "pignon de pin"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            104
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "pistache"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            61,
                            105
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "choux",
                            "choux-fleur"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            61,
                            106
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "choux",
                            "chinois"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            61,
                            107
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "choux",
                            "de Bruxelles"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            61,
                            108
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "choux",
                            "vert"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            61,
                            109
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "choux",
                            "rouge"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            62,
                            110
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "salade",
                            "laitue"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            62,
                            111
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "salade",
                            "batavia"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            62,
                            112
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "salade",
                            "feuille de chêne"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            62,
                            113
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "salade",
                            "frisée"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            62,
                            114
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "salade",
                            "scarole"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            62,
                            115
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "salade",
                            "endive"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            72,
                            116
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "haricot",
                            "mojette"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            72,
                            117
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "haricot",
                            "blanc"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            72,
                            118
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "haricot",
                            "noir"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            72,
                            119
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "haricot",
                            "rouge"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            72,
                            120
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "haricot",
                            "vert"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            33,
                            101,
                            121
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "cuisson",
                            "four",
                            "micro-onde"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            33,
                            101,
                            122
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "cuisson",
                            "four",
                            "multi-fonctions"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            33,
                            101,
                            123
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "cuisson",
                            "four",
                            "airfryer"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            33,
                            101,
                            124
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "cuisson",
                            "four",
                            "à pizza"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            33,
                            102,
                            125
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "cuisson",
                            "plaques",
                            "halogène"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            33,
                            102,
                            126
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "cuisson",
                            "plaques",
                            "induction"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            33,
                            104,
                            127
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "cuisson",
                            "spécial",
                            "gaufrier"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            33,
                            104,
                            128
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "cuisson",
                            "spécial",
                            "raclette"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            33,
                            104,
                            129
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "cuisson",
                            "spécial",
                            "cuiseur vapeur"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            33,
                            104,
                            130
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "cuisson",
                            "spécial",
                            "pancake"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            40,
                            144,
                            131
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "décor",
                            "objet décoratif",
                            "tableau"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            40,
                            144,
                            132
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "décor",
                            "objet décoratif",
                            "assiette"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            40,
                            144,
                            133
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "décor",
                            "objet décoratif",
                            "miroir"
                        ]
                    },
                    {
                        "type": [
                            2,
                            10,
                            44,
                            156,
                            134
                        ],
                        "noms": [
                            "habitat",
                            "consommable",
                            "eau",
                            "minérale",
                            "plate"
                        ]
                    },
                    {
                        "type": [
                            2,
                            10,
                            44,
                            156,
                            135
                        ],
                        "noms": [
                            "habitat",
                            "consommable",
                            "eau",
                            "minérale",
                            "pétillante"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            210,
                            150
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "manuel",
                            "burin"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            210,
                            151
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "manuel",
                            "ciseau"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            210,
                            152
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "manuel",
                            "clé"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            210,
                            153
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "manuel",
                            "lime"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            210,
                            154
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "manuel",
                            "marteau"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            210,
                            155
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "manuel",
                            "rabot"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            210,
                            156
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "manuel",
                            "scie"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            210,
                            157
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "manuel",
                            "tournevis"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            210,
                            158
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "manuel",
                            "truelle"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            211,
                            159
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "électrique",
                            "défonceuse"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            211,
                            160
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "électrique",
                            "ponceuse"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            211,
                            161
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "électrique",
                            "perceuse"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            211,
                            162
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "électrique",
                            "rabot"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            211,
                            163
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "électrique",
                            "scie"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            211,
                            164
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "électrique",
                            "visseuse"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            212,
                            165
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "pneumatique",
                            "marteau-piqueur"
                        ]
                    },
                    {
                        "type": [
                            8,
                            28,
                            100,
                            215,
                            166
                        ],
                        "noms": [
                            "production",
                            "quincaillerie",
                            "fixation",
                            "vis",
                            "plat"
                        ]
                    },
                    {
                        "type": [
                            8,
                            28,
                            100,
                            215,
                            167
                        ],
                        "noms": [
                            "production",
                            "quincaillerie",
                            "fixation",
                            "vis",
                            "cruciforme"
                        ]
                    },
                    {
                        "type": [
                            8,
                            28,
                            100,
                            215,
                            168
                        ],
                        "noms": [
                            "production",
                            "quincaillerie",
                            "fixation",
                            "vis",
                            "torx"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            18,
                            231,
                            169
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "algues",
                            "brunes",
                            "wakamé"
                        ],
                        "car": "goût d'huître"
                    },
                    {
                        "type": [
                            1,
                            2,
                            18,
                            232,
                            170
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "algues",
                            "rouges",
                            "dulse "
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            18,
                            232,
                            171
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "algues",
                            "rouges",
                            "nori"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            18,
                            232,
                            172
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "algues",
                            "rouges",
                            "pioca "
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            18,
                            232,
                            173
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "algues",
                            "rouges",
                            "ogonori"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            18,
                            231,
                            174
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "algues",
                            "brunes",
                            "kombu "
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            18,
                            231,
                            175
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "algues",
                            "brunes",
                            "kombu royal"
                        ],
                        "car": "légèrement sucré"
                    },
                    {
                        "type": [
                            1,
                            2,
                            18,
                            231,
                            176
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "algues",
                            "brunes",
                            "fucus "
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            18,
                            231,
                            177
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "algues",
                            "brunes",
                            "haricot de mer"
                        ],
                        "car": "petite pointe de noisette"
                    },
                    {
                        "type": [
                            1,
                            2,
                            18,
                            233,
                            178
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "algues",
                            "vertes",
                            "laitue de mer"
                        ],
                        "car": "saveur corsée proche de l’oseille"
                    },
                    {
                        "type": [
                            1,
                            2,
                            18,
                            233,
                            179
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "algues",
                            "vertes",
                            "aonori"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            42,
                            147,
                            180
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "électrique",
                            "prise",
                            "110-220V"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            42,
                            147,
                            181
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "électrique",
                            "prise",
                            "RJ45  "
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            42,
                            147,
                            182
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "électrique",
                            "prise",
                            "USB A "
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            42,
                            147,
                            183
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "électrique",
                            "prise",
                            "USB C "
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            37,
                            126,
                            184
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "chauffage",
                            "foyer bois",
                            "insert"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9,
                            37,
                            126,
                            185
                        ],
                        "noms": [
                            "habitat",
                            "équipement",
                            "chauffage",
                            "foyer bois",
                            "cheminée"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            14,
                            46,
                            186
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "insectes",
                            "ver",
                            "de farine"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            14,
                            46,
                            187
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "insectes",
                            "ver",
                            "à soie"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            14,
                            46,
                            188
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "insectes",
                            "ver",
                            "morio "
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            14,
                            46,
                            189
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "insectes",
                            "ver",
                            "de palmier"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            14,
                            46,
                            190
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "insectes",
                            "ver",
                            "de bambou"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            9,
                            13,
                            191
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "volaille",
                            "viande",
                            "oie"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            9,
                            13,
                            192
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "volaille",
                            "viande",
                            "dinde "
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            63,
                            199
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "avocat",
                            "Hass"
                        ],
                        "car": "Sa peau qui change de couleur en mûrissant, elle passe ainsi du vert vif au noir violacé foncé. Sa texture est dure et rugueuse. Elle est issue de la race guatémaltèque",
                        "use": ""
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            63,
                            200
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "avocat",
                            "Fuerte"
                        ],
                        "car": "Cet avocat se reconnaît par sa forme longue et ovale similaire à la poire et par sa peau coriace facile à peler. Il mûrit en maintenant sa couleur verte et dispose d’une excellente saveur ainsi que d’une bonne onctuosité. Cette variété provient aussi de la race guatémaltèque."
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            63,
                            201
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "avocat",
                            "Roseau"
                        ],
                        "car": "a une chair beurrée, ce qui lui confère une saveur plus légère et subtile. Le roseau se reconnaît par sa taille similaire à une balle de softball et sa forme ronde. Il est ainsi le plus gros avocat. Cette variété dispose tout de même des granulations sur la peau, ce qui n’empêche pas de le peler. Lorsque le roseau mûrit, sa peau ne change pas de couleur, elle reste verte."
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            63,
                            202
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "avocat",
                            "Bacon"
                        ],
                        "car": "a la forme d’une poire ovale et reste vert même quand elle est mûre. Sa peau reste brillante et a une texture granuleuse. De plus, la chair de cet avocat est très crémeuse et jaune et ne contient pas beaucoup d’huile."
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            63,
                            203
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "avocat",
                            "Wurtz"
                        ],
                        "car": "Leur peau fine demeure verte à force que le fruit mûrit. La saveur de cette variété d’avocat est très bonne et elle contient une faible quantité d’huile."
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            63,
                            204
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "avocat",
                            "Choquette"
                        ],
                        "car": "grande teneur en eau et libère un fluide soyeux une fois coupé. Sa chair est aqueuse et la peau vert foncé est brillante et lisse. Gros avocat très savoureux, il a un goût crémeux. "
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            63,
                            205
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "avocat",
                            "Pinkerton"
                        ],
                        "car": "De forme oblongue, la variété Pinkerton se distingue par la petite taille de son noyau qui loge dans une chair crémeuse. Cet avocat a une peau épaisse, caillouteuse qui reste verte lorsque l’avocat mûrit. La saveur des avocats Pinkerton est très excellente et est similaire à celle du Hass."
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            63,
                            206
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "avocat",
                            "Pryor"
                        ],
                        "car": "Savoureux et à la chair crémeuse, il fait partie des plus petits avocats. Cet avocat se caractérise par sa peau fine et brillante dont la couleur verte reste telle malgré sa maturité."
                    },
                    {
                        "type": [
                            1,
                            2,
                            16,
                            63,
                            207
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "légumes",
                            "avocat",
                            "Stewart"
                        ],
                        "car": "Sa couleur devient violet foncé ou noire une fois mûr. Peau fine et forme de poire. Sa chair crémeuse et faible taux d’huile."
                    },
                    {
                        "type": [
                            5,
                            34,
                            228,
                            250,
                            209
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "automobile",
                            "achat",
                            "1 place"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            228,
                            250,
                            210
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "automobile",
                            "achat",
                            "2 places"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            228,
                            250,
                            211
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "automobile",
                            "achat",
                            "4-5 places"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            228,
                            250,
                            212
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "automobile",
                            "achat",
                            "6 à 10 places"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            229,
                            254,
                            213
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "poids lourd",
                            "achat",
                            "bus"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            229,
                            254,
                            214
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "poids lourd",
                            "achat",
                            "camion"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            229,
                            254,
                            215
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "poids lourd",
                            "achat",
                            "spécial"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            229,
                            254,
                            216
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "poids lourd",
                            "achat",
                            "tracteur"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            242,
                            281,
                            217
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "remorque",
                            "achat",
                            "caravane"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            242,
                            281,
                            218
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "remorque",
                            "achat",
                            "poids lourd"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            242,
                            281,
                            219
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "remorque",
                            "achat",
                            "poids léger"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            242,
                            281,
                            220
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "remorque",
                            "achat",
                            "semi-remorque"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            228,
                            251,
                            221
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "automobile",
                            "entretien",
                            "nettoyage"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            228,
                            251,
                            222
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "automobile",
                            "entretien",
                            "révision"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            228,
                            251,
                            223
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "automobile",
                            "entretien",
                            "pneus etc"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            228,
                            251,
                            224
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "automobile",
                            "entretien",
                            "réparation"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            229,
                            256,
                            225
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "poids lourd",
                            "entretien",
                            "réparation"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            229,
                            256,
                            226
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "poids lourd",
                            "entretien",
                            "révision"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            229,
                            256,
                            227
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "poids lourd",
                            "entretien",
                            "pneus etc"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            229,
                            256,
                            228
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "poids lourd",
                            "entretien",
                            "nettoyage"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            230,
                            259,
                            229
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "utilitaire",
                            "entretien",
                            "réparation"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            230,
                            259,
                            230
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "utilitaire",
                            "entretien",
                            "révision"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            230,
                            259,
                            231
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "utilitaire",
                            "entretien",
                            "pneus etc"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            230,
                            259,
                            232
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "utilitaire",
                            "entretien",
                            "nettoyage"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            231,
                            277,
                            233
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "moto",
                            "entretien",
                            "réparation"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            231,
                            277,
                            234
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "moto",
                            "entretien",
                            "pneus etc"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            231,
                            277,
                            235
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "moto",
                            "entretien",
                            "révision"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            233,
                            285,
                            236
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "vélo",
                            "entretien",
                            "réparation"
                        ]
                    },
                    {
                        "type": [
                            5,
                            34,
                            233,
                            285,
                            237
                        ],
                        "noms": [
                            "transport",
                            "terrestre",
                            "vélo",
                            "entretien",
                            "pneus etc"
                        ]
                    }
                ]
            },
            {
                "items": [
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            5,
                            1
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "frais",
                            "faisselle"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            5,
                            2
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "frais",
                            "fromage blanc"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            5,
                            3
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "frais",
                            "mozarella"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            5,
                            4
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "frais",
                            "féta"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            5,
                            5
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "frais",
                            "chèvre frais"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            5,
                            6
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "frais",
                            "Saint-Marcellin"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            5,
                            7
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "frais",
                            "Saint-Félicien"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            6,
                            8
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "croûte fleurie",
                            "Brie de Meaux"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            6,
                            9
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "croûte fleurie",
                            "Brie de Melun"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            6,
                            10
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "croûte fleurie",
                            "Brillat Savarin"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            6,
                            11
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "croûte fleurie",
                            "Brillat Savarin truffoné"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            6,
                            12
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "croûte fleurie",
                            "Camembert de Normandie"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            6,
                            13
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "croûte fleurie",
                            "Chaource"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            6,
                            14
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "croûte fleurie",
                            "Coulommiers"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            6,
                            15
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "croûte fleurie",
                            "Jolirond"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            6,
                            16
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "croûte fleurie",
                            "Neufchâtel"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            6,
                            17
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "croûte fleurie",
                            "Pierre Blanche"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            7,
                            18
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "croûte lavée",
                            "Bergues torchon"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            7,
                            19
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "croûte lavée",
                            "Carré du Vinage"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            7,
                            20
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "croûte lavée",
                            "Curé nantais"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            7,
                            21
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "croûte lavée",
                            "Langres"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            7,
                            22
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "croûte lavée",
                            "Livarot"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            7,
                            23
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "croûte lavée",
                            "Maroilles"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            7,
                            24
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "croûte lavée",
                            "Mimolette"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            7,
                            25
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "croûte lavée",
                            "Mont d'or"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            7,
                            26
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "croûte lavée",
                            "Munster"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            7,
                            27
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "croûte lavée",
                            "Pont l'Evêque"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            7,
                            28
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "croûte lavée",
                            "Soumaintrain"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            7,
                            29
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "croûte lavée",
                            "Tallegio"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            7,
                            30
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "croûte lavée",
                            "Vieux Lille"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            8,
                            31
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "pâte persillée",
                            "Roquefort "
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            8,
                            32
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "pâte persillée",
                            "Bleu "
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            8,
                            33
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "pâte persillée",
                            "Fourme "
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            8,
                            34
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "pâte persillée",
                            "Gorgonzola "
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            8,
                            35
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "pâte persillée",
                            "Stilton "
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            8,
                            36
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "pâte persillée",
                            "Amish Blue "
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            9,
                            37
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "pâte préssée",
                            "Bethmale"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            9,
                            38
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "pâte préssée",
                            "Cantal"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            9,
                            39
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "pâte préssée",
                            "Cheddar"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            9,
                            40
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "pâte préssée",
                            "Fontina"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            9,
                            41
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "pâte préssée",
                            "Gouda"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            9,
                            42
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "pâte préssée",
                            "Luzenac"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            9,
                            43
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "pâte préssée",
                            "Mimolette"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            9,
                            44
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "pâte préssée",
                            "Morbier"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            9,
                            45
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "pâte préssée",
                            "Raclette fermière"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            9,
                            46
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "pâte préssée",
                            "Reblochon"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            9,
                            47
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "pâte préssée",
                            "Saint-Nectaire"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            9,
                            48
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "pâte préssée",
                            "Tomme"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            10,
                            49
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "pâte pressée cuite",
                            "Abondance"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            10,
                            50
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "pâte pressée cuite",
                            "Beaufort"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            10,
                            51
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "pâte pressée cuite",
                            "Gruyère suisse d'alpage"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            10,
                            52
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "pâte pressée cuite",
                            "Comté"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            10,
                            53
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "pâte pressée cuite",
                            "Etivaz"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            10,
                            54
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "pâte pressée cuite",
                            "Pecorino"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            1,
                            3,
                            10,
                            55
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "vache",
                            "fromage",
                            "pâte pressée cuite",
                            "Parmesan"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            10,
                            14,
                            35,
                            56
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "charcuterie",
                            "saucisse",
                            "chipolata",
                            "nature"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            10,
                            14,
                            35,
                            57
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "charcuterie",
                            "saucisse",
                            "chipolata",
                            "aux herbes"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            10,
                            14,
                            35,
                            58
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "charcuterie",
                            "saucisse",
                            "chipolata",
                            "au piment"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            63,
                            59
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "citron",
                            "de Menton"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            63,
                            60
                        ],
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "citron",
                            "yuzu"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            63,
                            61
                        ],
                        "car": "Peau jaune vif, lisse, très acide avec des graines à l'intérieur.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "citron",
                            "Eureka"
                        ],
                        "use": "Parfait pour les jus, les cocktails et les plats nécessitant une forte acidité."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            63,
                            62
                        ],
                        "car": "Peau jaune-orangé, plus fine et plus douce, avec un goût légèrement sucré.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "citron",
                            "Meyer"
                        ],
                        "use": "Idéal pour les desserts, les vinaigrettes et les sauces douces."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            63,
                            63
                        ],
                        "car": "Peau épaisse, jaune vif, très acide et juteux.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "citron",
                            "Lisbon"
                        ],
                        "use": "Idéal pour les plats salés, les marinades et les sauces."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            63,
                            64
                        ],
                        "car": "Peau verte, plus petite, avec une saveur très acide et un parfum intense.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "citron",
                            "Vert (Key Lime)"
                        ],
                        "use": "Parfait pour les desserts, en particulier la tarte au vert, ou pour aromatiser des boissons."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            63,
                            65
                        ],
                        "car": "Peau lisse, jaune pâle, légèrement plus doux que le Eureka, sans graines.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "citron",
                            "Bearss"
                        ],
                        "use": "Idéal pour les recettes de cuisine quotidienne et les boissons rafraîchissantes."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            63,
                            66
                        ],
                        "car": "Très gros citron, peau épaisse, plus doux avec une texture légèrement moins acide.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "citron",
                            "Ponderosa"
                        ],
                        "use": "Parfait pour les zestes, les smoothies ou pour ajouter une touche de fraîcheur aux plats."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            63,
                            67
                        ],
                        "car": "Peau épaisse, jaune pâle à jaune intense, légèrement sucré et peu acide.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "citron",
                            "de Sicile"
                        ],
                        "use": "Idéal pour les sauces, les marinades et les plats de fruits de mer."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            63,
                            68
                        ],
                        "car": "Peau épaisse, légèrement rugueuse, avec une saveur douce et parfumée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "citron",
                            "Sanbokan"
                        ],
                        "use": "Utilisé principalement dans la cuisine asiatique, pour les plats de poisson et de fruits de mer."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            63,
                            69
                        ],
                        "car": "Peau bosselée et verte, très aromatique avec une saveur acide mais aussi herbacée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "citron",
                            "Kaffir"
                        ],
                        "use": "Utilisé pour ajouter du goût aux soupes, curry et autres plats thaïlandais ou vietnamiens."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            63,
                            70
                        ],
                        "car": "Peau épaisse et parfumée, avec une chair juteuse et sucrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "citron",
                            "de Corse"
                        ],
                        "use": "Idéal pour la confiserie, les tartes, ou pour être utilisé en zestes dans des plats sucrés."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            63,
                            71
                        ],
                        "car": "Petite taille, peau mince, très acide, souvent utilisée dans les cuisines asiatique et philippine.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "citron",
                            "Calamondin"
                        ],
                        "use": "Parfait pour les boissons, les sauces et comme marinade dans les plats de viande."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            64,
                            72
                        ],
                        "car": "Peau fine et brillante, couleur orange vif, goût sucré et juteux.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "clémentine",
                            "de Corse"
                        ],
                        "use": "Idéale pour être consommée telle quelle, ou dans des salades de fruits."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            64,
                            73
                        ],
                        "car": "Peau fine, légèrement rugueuse, goût sucré avec une touche d’acidité.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "clémentine",
                            "de Maroc"
                        ],
                        "use": "Parfaite pour les jus, les desserts ou en accompagnement dans les plats salés."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            64,
                            74
                        ],
                        "car": "Peau fine, orange vif, goût doux et très juteux.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "clémentine",
                            "Nadorcott"
                        ],
                        "use": "Idéale pour les enfants, dans les smoothies ou à consommer nature."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            64,
                            75
                        ],
                        "car": "Peau fine, couleur orange intense, légèrement plus acide que les autres variétés.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "clémentine",
                            "de Sicile"
                        ],
                        "use": "Parfaite pour les salades, les desserts ou pour faire de la confiture."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            64,
                            76
                        ],
                        "car": "Peau fine, couleur orange éclatante, avec une texture juteuse et douce.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "clémentine",
                            "Marisol"
                        ],
                        "use": "Utilisez-la dans les salades ou comme garniture pour vos plats de viande ou poisson."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            64,
                            77
                        ],
                        "car": "Peau fine, orange vif, moins acide avec une chair très sucrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "clémentine",
                            "Tango"
                        ],
                        "use": "Idéale pour les enfants ou pour ajouter dans les cocktails et desserts."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            64,
                            78
                        ],
                        "car": "Peau fine et lisse, couleur orange, sucrée et très juteuse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "clémentine",
                            "Clemenules"
                        ],
                        "use": "Parfaite pour les salades de fruits, les tartes ou à déguster seule."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            64,
                            79
                        ],
                        "car": "Peau fine, orange vif, avec une chair particulièrement douce et sucrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "clémentine",
                            "de Valencia"
                        ],
                        "use": "Idéale pour faire des jus frais ou à consommer au goûter."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            64,
                            80
                        ],
                        "car": "Peau fine et brillante, légèrement acide avec une texture très juteuse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "clémentine",
                            "de Chine"
                        ],
                        "use": "Idéale pour les recettes de desserts ou à utiliser en garniture pour les plats sucrés."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            64,
                            81
                        ],
                        "car": "Peau lisse, orange clair, avec une chair douce et sucrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "clémentine",
                            "Okitsu"
                        ],
                        "use": "Parfaite pour les salades ou à manger directement en encas."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            64,
                            82
                        ],
                        "car": "Peau fine, orange vif, très sucrée avec un faible taux d'acidité.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "clémentine",
                            "Sumo"
                        ],
                        "use": "Idéale pour les enfants ou dans des plats frais et légers."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            65,
                            83
                        ],
                        "car": "Peau épaisse, jaune pâle, chair sucrée et acidulée, très juteuse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "mandarine",
                            "de Cédrat"
                        ],
                        "use": "Idéale pour des salades de fruits ou à consommer nature."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            65,
                            84
                        ],
                        "car": "Peau fine, orange vif, chair douce et peu acide, facile à éplucher.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "mandarine",
                            "Satsuma"
                        ],
                        "use": "Excellente pour les desserts, les jus ou les salades fraîches."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            65,
                            85
                        ],
                        "car": "Peau fine, orange intense, chair juteuse et très sucrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "mandarine",
                            "Clémentine"
                        ],
                        "use": "Idéale pour les collations ou pour agrémenter les plats sucrés-salés."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            65,
                            86
                        ],
                        "car": "Peau fine et brillante, orange vif, saveur sucrée avec une légère pointe d’acidité.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "mandarine",
                            "Tango"
                        ],
                        "use": "Parfaite pour être mangée nature ou en jus frais."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            65,
                            87
                        ],
                        "car": "Peau rugueuse, couleur orange, chair bien sucrée et peu acide.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "mandarine",
                            "de Djerba"
                        ],
                        "use": "Idéale pour les desserts ou les smoothies."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            65,
                            88
                        ],
                        "car": "Peau fine, orange foncé, chair très sucrée et peu de pépins.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "mandarine",
                            "Nova"
                        ],
                        "use": "À consommer fraîche, en salade ou dans des desserts exotiques."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            65,
                            89
                        ],
                        "car": "Peau épaisse et facilement détachable, chair juteuse et sucrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "mandarine",
                            "Sumo"
                        ],
                        "use": "Idéale pour être mangée en tant que fruit ou en jus."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            65,
                            90
                        ],
                        "car": "Peau épaisse, orange foncé, chair très juteuse et sucrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "mandarine",
                            "de Sicile"
                        ],
                        "use": "Excellente pour faire des jus frais ou des confitures maison."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            65,
                            91
                        ],
                        "car": "Peau lisse, orange vif, chair sucrée et légèrement acidulée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "mandarine",
                            "de Navel"
                        ],
                        "use": "À déguster nature, en jus ou en salade de fruits."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            65,
                            92
                        ],
                        "car": "Peau fine, orange vif, chair douce et sucrée, très juteuse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "mandarine",
                            "Owari"
                        ],
                        "use": "Idéale pour les collations ou pour les recettes de pâtisserie."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            66,
                            93
                        ],
                        "car": "Peau épaisse, douce, facile à peler, chair sucrée et juteuse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "orange",
                            "Navel"
                        ],
                        "use": "Idéale à croquer nature ou pour salades de fruits."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            66,
                            94
                        ],
                        "car": "Peau fine, chair très juteuse, goût sucré légèrement acidulé.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "orange",
                            "Valencia"
                        ],
                        "use": "Parfaite pour le jus frais et les cocktails."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            66,
                            95
                        ],
                        "car": "Chair rouge vif, saveur fruitée avec des notes légèrement acidulées et épicées.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "orange",
                            "Blood Orange (Sanguine)"
                        ],
                        "use": "Excellente en jus, desserts ou salades colorées."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            66,
                            96
                        ],
                        "car": "Peau rugueuse, chair très acidulée, idéale pour la cuisine et les confitures.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "orange",
                            "Seville"
                        ],
                        "use": "Parfaite pour marmelades, sauces et pâtisseries."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            66,
                            97
                        ],
                        "car": "Peau orange, chair rose corail, goût sucré avec une pointe d’acidité.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "orange",
                            "Cara Cara"
                        ],
                        "use": "À savourer fraîche, en jus ou pour décorer desserts."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            66,
                            98
                        ],
                        "car": "Petite, facile à éplucher, chair sucrée et parfumée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "orange",
                            "Mandarine"
                        ],
                        "use": "Idéale pour les collations, salades et jus doux."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            66,
                            99
                        ],
                        "car": "Croisement entre et pamplemousse, chair juteuse et acidulée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "orange",
                            "Tangelo"
                        ],
                        "use": "Parfaite pour jus frais, salades ou smoothies."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            66,
                            100
                        ],
                        "car": "Petite, aromatique, chair amère et parfumée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "orange",
                            "Bergamote"
                        ],
                        "use": "Utilisée surtout pour parfumer thés, desserts et confiseries."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            66,
                            101
                        ],
                        "car": "Peau lisse, chair douce et juteuse, faible en acidité.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "orange",
                            "Hamlin"
                        ],
                        "use": "Idéale pour jus, smoothies et consommation directe."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            66,
                            102
                        ],
                        "car": "Peau orange foncé, chair sucrée et juteuse, très populaire pour la consommation fraîche.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "orange",
                            "Jaffa"
                        ],
                        "use": "À consommer nature, en jus ou en salade de fruits."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            67,
                            103
                        ],
                        "car": "Peau jaune rosée, chair rose vif, douce et légèrement acidulée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "pamplemousse",
                            "Rose"
                        ],
                        "use": "Parfait pour la consommation fraîche, en jus ou en salade de fruits."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            67,
                            104
                        ],
                        "car": "Peau jaune pâle, chair blanche ou crème, saveur douce et subtilement acidulée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "pamplemousse",
                            "Blanc"
                        ],
                        "use": "Idéal pour les jus, cocktails ou desserts légers."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            67,
                            105
                        ],
                        "car": "Peau jaune avec nuances rouges, chair rouge foncé, goût sucré et juteux.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "pamplemousse",
                            "Rouge"
                        ],
                        "use": "Excellente en jus frais, smoothies ou pâtisseries."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            67,
                            106
                        ],
                        "car": "Peau lisse, chair jaune pâle, saveur douce rappelant un croisement avec le pomelo.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "pamplemousse",
                            "Oroblanco"
                        ],
                        "use": "À déguster nature, en salade ou en dessert."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            67,
                            107
                        ],
                        "car": "Peau jaune clair, chair rouge foncé, goût sucré avec peu d’amertume.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "pamplemousse",
                            "Star Ruby"
                        ],
                        "use": "Idéal pour jus frais et cocktails raffinés."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            67,
                            108
                        ],
                        "car": "Peau jaune à rouge clair, chair rouge, très juteux et sucré.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "pamplemousse",
                            "Rio Red"
                        ],
                        "use": "Parfait à consommer frais, en jus ou en smoothie."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            67,
                            109
                        ],
                        "car": "Peau jaune, chair pâle, très sucrée et légèrement acidulée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "pamplemousse",
                            "Honey"
                        ],
                        "use": "À savourer nature ou dans des salades de fruits sucrées."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            67,
                            110
                        ],
                        "car": "Peau jaune, chair rose ou blanche, goût équilibré entre douceur et acidité.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "pamplemousse",
                            "Duncan"
                        ],
                        "use": "Idéal pour jus, desserts et recettes culinaires."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            67,
                            111
                        ],
                        "car": "Peau jaune clair, chair rose clair, goût doux et légèrement acidulé.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "pamplemousse",
                            "Redblush"
                        ],
                        "use": "Parfait à consommer frais ou en jus pour le petit-déjeuner."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            47,
                            67,
                            112
                        ],
                        "car": "Peau jaune, chair blanche à rose, saveur juteuse et légèrement acidulée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "agrumes",
                            "pamplemousse",
                            "Thompson"
                        ],
                        "use": "À savourer nature, en jus ou pour aromatiser desserts et salades."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            68,
                            113
                        ],
                        "car": "Baies grosses, noires, au goût très parfumé et légèrement acidulé.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "cassis",
                            "Noir de Bourgogne"
                        ],
                        "use": "Idéal pour la fabrication de confitures et jus artisanaux."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            68,
                            114
                        ],
                        "car": "Fruits gros et brillants, chair juteuse avec un équilibre entre douceur et acidité.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "cassis",
                            "Titania"
                        ],
                        "use": "Parfait pour les desserts frais, tartes et coulis."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            68,
                            115
                        ],
                        "car": "Baies moyennes, avec un goût doux et une récolte abondante.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "cassis",
                            "Ben Lomond"
                        ],
                        "use": "Adapté aux jus, gelées et sirops maison."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            68,
                            116
                        ],
                        "car": "Variété résistante, fruits de taille moyenne à saveur fruitée intense.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "cassis",
                            "Ojebyn"
                        ],
                        "use": "Idéal pour les infusions, desserts et coulis."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            68,
                            117
                        ],
                        "car": "Baies très grosses, juteuses et sucrées avec une légère pointe d’acidité.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "cassis",
                            "Black Reward"
                        ],
                        "use": "Parfait pour les smoothies, glaces ou à consommer frais."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            68,
                            118
                        ],
                        "car": "Fruits noirs, brillants, au goût riche et légèrement acidulé.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "cassis",
                            "Tisel"
                        ],
                        "use": "Excellent pour les pâtisseries, tartes et coulis raffinés."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            68,
                            119
                        ],
                        "car": "Baies de taille moyenne à gros calibre, goût sucré et fruité.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "cassis",
                            "Ben Connan"
                        ],
                        "use": "Idéal pour la transformation en gelées et boissons aromatiques."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            68,
                            120
                        ],
                        "car": "Variété précoce, fruits noirs avec une acidité équilibrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "cassis",
                            "Ben Alder"
                        ],
                        "use": "Parfait pour les récoltes précoces et les jus frais."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            68,
                            121
                        ],
                        "car": "Variété tardive, grosses baies noires avec une saveur douce et intense.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "cassis",
                            "Consort"
                        ],
                        "use": "Idéal pour la conservation, confitures et recettes hivernales."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            69,
                            122
                        ],
                        "car": "Petits fruits rouges, fermes et légèrement acidulés, avec une peau lisse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "groseille",
                            "Rouge"
                        ],
                        "use": "Idéale pour les desserts, les confitures ou pour ajouter de la fraîcheur aux salades de fruits."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            69,
                            123
                        ],
                        "car": "Fruits plus translucides et moins acides que la variété rouge, avec un goût doux.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "groseille",
                            "Blanche"
                        ],
                        "use": "Parfaite pour les salades de fruits ou les desserts légers."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            69,
                            124
                        ],
                        "car": "Fruits encore un peu acides, de couleur vert clair ou jaune-vert, à la chair croquante.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "groseille",
                            "Verte"
                        ],
                        "use": "Utilisée en compote, en gelée ou en jus pour ceux qui apprécient l'acidité."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            69,
                            125
                        ],
                        "car": "Fruits plus gros, d'une couleur rouge intense, avec un goût sucré-acidulé.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "groseille",
                            "d'Inde"
                        ],
                        "use": "À déguster en compote, ou en confiture, idéal pour les recettes exotiques."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            69,
                            126
                        ],
                        "car": "Fruit plus petit, épineux et légèrement plus sucré que les autres variétés.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "groseille",
                            "Épineuse"
                        ],
                        "use": "Idéale pour les tartes ou pour ajouter un croquant particulier dans les salades de fruits."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            69,
                            127
                        ],
                        "car": "Fruit de couleur violet clair, au goût plus sucré, avec une texture juteuse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "groseille",
                            "Améthyste"
                        ],
                        "use": "Excellente pour les smoothies, les glaces ou pour une touche sucrée dans les cocktails."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            69,
                            128
                        ],
                        "car": "Petits fruits noirs très intenses en saveur, riches en arômes complexes.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "groseille",
                            "Noire"
                        ],
                        "use": "Utilisée dans les jus, les confitures ou même dans des sauces aigres-douces pour plats salés."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            69,
                            129
                        ],
                        "car": "Petits fruits ronds et fermes, couleur rouge orangé, avec un goût sucré-acidulé.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "groseille",
                            "à maquereau"
                        ],
                        "use": "Parfaite pour les tartes, les confitures ou les gelées."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            69,
                            130
                        ],
                        "car": "Gros fruits, souvent d'un rouge très foncé, au goût très sucré avec une légère touche acidulée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "groseille",
                            "du Cap"
                        ],
                        "use": "Idéale en jus, sorbets ou comme garniture de gâteaux."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            69,
                            131
                        ],
                        "car": "Fruits légèrement dorés, au goût sucré et légèrement acidulé, avec une texture juteuse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "groseille",
                            "Champagne"
                        ],
                        "use": "À consommer fraîche ou pour des tartes, confitures et salades de fruits."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            70,
                            132
                        ],
                        "car": "Fruits allongés, rouges vifs, goût sucré et légèrement acidulé, chair tendre.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "fraise",
                            "Gariguette"
                        ],
                        "use": "Parfaite à croquer nature ou en salade de fruits."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            70,
                            133
                        ],
                        "car": "Petite taille, parfum intense et sucré, chair juteuse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "fraise",
                            "Mara des Bois"
                        ],
                        "use": "Idéale pour desserts, tartes et coulis."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            70,
                            134
                        ],
                        "car": "Fruits fermes, forme ronde, saveur équilibrée entre douceur et acidité.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "fraise",
                            "Ciflorette"
                        ],
                        "use": "Convient aux salades, confitures et pâtisseries."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            70,
                            135
                        ],
                        "car": "Fruits gros et fermes, chair juteuse et parfumée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "fraise",
                            "Charlotte"
                        ],
                        "use": "Idéale pour dégustation fraîche ou en coulis."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            70,
                            136
                        ],
                        "car": "Grosse fraise, très sucrée, chair ferme et juteuse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "fraise",
                            "Alexandrine"
                        ],
                        "use": "Parfaite pour les confitures et desserts gourmands."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            70,
                            137
                        ],
                        "car": "Fruits rouges brillants, fermes avec un goût délicat.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "fraise",
                            "Cléry"
                        ],
                        "use": "Adaptée aux salades, tartes et smoothies."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            70,
                            138
                        ],
                        "car": "Fraise au goût intense, production étalée sur plusieurs mois.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "fraise",
                            "Mara des Bois remontante"
                        ],
                        "use": "Parfaite pour une consommation régulière, fraîche ou en desserts."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            70,
                            139
                        ],
                        "car": "Fraise classique, ferme, au goût sucré et légèrement acidulé.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "fraise",
                            "Senga Sengana"
                        ],
                        "use": "Idéale pour les desserts, confitures et jus."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            70,
                            140
                        ],
                        "car": "Fruits volumineux, rouges et fermes, goût doux et peu acidulé.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "fraise",
                            "Elsanta"
                        ],
                        "use": "Parfaite pour la vente fraîche, pâtisseries et coulis."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            70,
                            141
                        ],
                        "car": "Petite fraise, parfumée, très sucrée avec une texture fine.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "fraise",
                            "Mignonette"
                        ],
                        "use": "Idéale pour desserts raffinés ou à croquer."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            71,
                            142
                        ],
                        "car": "Framboise rouge foncé, goût sucré-acidulé, récolte remontante en été et automne.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "framboise",
                            "Heritage"
                        ],
                        "use": "Parfaite pour les confitures, les desserts et la congélation."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            71,
                            143
                        ],
                        "car": "Gros fruits rouges brillants, saveur douce et très parfumée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "framboise",
                            "Tulameen"
                        ],
                        "use": "Idéale à déguster fraîche ou pour décorer des pâtisseries."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            71,
                            144
                        ],
                        "car": "Fruits rouges intenses, chair ferme, goût prononcé.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "framboise",
                            "Autumn Bliss"
                        ],
                        "use": "Excellente pour les confitures ou les coulis riches en goût."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            71,
                            145
                        ],
                        "car": "Framboises fermes, de grande taille, très productives.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "framboise",
                            "Glen Ample"
                        ],
                        "use": "Idéale pour la congélation, les smoothies et les tartes."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            71,
                            146
                        ],
                        "car": "Rouge foncé, chair juteuse, saveur sucrée équilibrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "framboise",
                            "Meeker"
                        ],
                        "use": "À consommer fraîche, en salade de fruits ou sur du yaourt."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            71,
                            147
                        ],
                        "car": "Framboise jaune doré, goût doux et floral, peu acide.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "framboise",
                            "Fallgold"
                        ],
                        "use": "Parfaite pour surprendre dans les desserts ou à manger nature."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            71,
                            148
                        ],
                        "car": "Fruits rouges ronds, goût acidulé, texture juteuse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "framboise",
                            "Willamette"
                        ],
                        "use": "Recommandée pour les confitures et les sauces fruitées."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            71,
                            149
                        ],
                        "car": "Framboise rouge clair, goût sucré intense, très parfumée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "framboise",
                            "Caroline"
                        ],
                        "use": "Idéale pour les pâtisseries fines ou les coulis de fruits rouges."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            71,
                            150
                        ],
                        "car": "Framboise noire, saveur sucrée, légèrement sauvage.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "framboise",
                            "Jewel"
                        ],
                        "use": "À utiliser dans les gelées, sirops ou pour des confiseries."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            71,
                            151
                        ],
                        "car": "Framboise jaune pâle, goût doux et crémeux, peu acide.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "framboise",
                            "Anne"
                        ],
                        "use": "Parfaite pour les salades de fruits ou les recettes originales."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            71,
                            152
                        ],
                        "car": "Fruit rouge clair, forme conique, goût doux, peu acide.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "framboise",
                            "Encore"
                        ],
                        "use": "Idéale pour les plats froids, les boissons ou à consommer seule."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            71,
                            153
                        ],
                        "car": "Framboise pourpre, saveur riche et complexe, texture ferme.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "framboise",
                            "Brandywine"
                        ],
                        "use": "Recommandée pour les tartes, les confitures ou les sauces."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            72,
                            154
                        ],
                        "car": "Peuvent être grandes, avec une peau bleu foncé, et une chair douce et juteuse. Très sucrées.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "myrtille",
                            "Highbush"
                        ],
                        "use": "Idéale pour être consommée fraîche, ou pour réaliser des confitures et des pâtisseries."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            72,
                            155
                        ],
                        "car": "Plus petites et souvent plus concentrées en saveur. Elles ont une peau bleu clair à presque noire.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "myrtille",
                            "Lowbush"
                        ],
                        "use": "Parfaite pour les smoothies, les compotes, ou dans des tartes."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            72,
                            156
                        ],
                        "car": "Fruit plus petit, mais plus sucré que la Highbush, avec une texture agréable et un goût légèrement acidulé.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "myrtille",
                            "Half-High"
                        ],
                        "use": "Utilisée pour les desserts ou les salades de fruits pour ajouter une touche acidulée."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            72,
                            157
                        ],
                        "car": "Petites, très juteuses et au goût sauvage intense. Elles sont souvent récoltées dans des forêts ou des montagnes.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "myrtille",
                            "Wild"
                        ],
                        "use": "Idéales pour la réalisation de confitures maison ou pour ajouter à des sauces sucrées pour accompagner des viandes."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            72,
                            158
                        ],
                        "car": "Fruits de taille moyenne à grande, avec une peau bleu-violet et une saveur sucrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "myrtille",
                            "Legacy"
                        ],
                        "use": "Très bonnes fraîches, dans des jus ou des smoothies."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            72,
                            159
                        ],
                        "car": "Gros fruits d'une couleur bleu foncé, avec une saveur douce et agréable.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "myrtille",
                            "Patriot"
                        ],
                        "use": "Parfaite pour la consommation en toute simplicité, ou dans des tartes aux fruits."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            72,
                            160
                        ],
                        "car": "Peuvent être plus petites, mais offrent un goût sucré et une peau épaisse. Très résistantes aux maladies.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "myrtille",
                            "Duke"
                        ],
                        "use": "Excellentes en confitures ou dans les céréales au petit-déjeuner."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            72,
                            161
                        ],
                        "car": "Petites myrtilles produites sur un arbuste compact, avec une chair ferme et une saveur sucrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "myrtille",
                            "North Blue"
                        ],
                        "use": "Idéale pour une consommation directe, ou dans des mélanges de fruits frais."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            72,
                            162
                        ],
                        "car": "Gros fruits, avec une peau d'un bleu intense et une saveur sucrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "myrtille",
                            "Bluecrop"
                        ],
                        "use": "Très bonnes dans des tartes, des gâteaux ou pour faire des smoothies."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            72,
                            163
                        ],
                        "car": "Petites myrtilles produites sur un buisson compact, adaptées aux espaces réduits. Saveur très sucrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "myrtille",
                            "Top Hat"
                        ],
                        "use": "Parfaite pour les pots de jardin, pour être consommée fraîche ou dans des salades."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            73,
                            164
                        ],
                        "car": "Peau noire brillante, chair ferme, sucrée avec une pointe d’acidité.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "mûre",
                            "Marion"
                        ],
                        "use": "Parfaite pour les tartes, les confitures ou dégustée fraîche."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            73,
                            165
                        ],
                        "car": "Peau rougeâtre foncée, chair juteuse, douce et légèrement acidulée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "mûre",
                            "Boysenberry"
                        ],
                        "use": "Idéale en smoothies, sorbets ou comme garniture pour les crêpes."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            73,
                            166
                        ],
                        "car": "Peau noire, chair juteuse, parfumée et sucrée avec une légère touche acidulée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "mûre",
                            "de ronce"
                        ],
                        "use": "Parfaite pour les confitures, desserts ou à déguster telle quelle."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            73,
                            167
                        ],
                        "car": "Peau noire brillante, chair dense et sucrée, peu acide.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "mûre",
                            "Apache"
                        ],
                        "use": "Excellente en compote, confiture ou pour agrémenter des salades de fruits."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            73,
                            168
                        ],
                        "car": "Peau noire, chair douce, avec un goût sucré et légèrement acidulé.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "mûre",
                            "Black Satin"
                        ],
                        "use": "À déguster frais, en confiture ou dans des tartes."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            73,
                            169
                        ],
                        "car": "Peau noire intense, chair ferme, avec un goût sucré et légèrement acidulé.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "mûre",
                            "Marionberry"
                        ],
                        "use": "Utilisée pour faire des confitures, des sauces ou dans des cocktails."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            73,
                            170
                        ],
                        "car": "Peau rouge foncé, chair acidulée et juteuse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "mûre",
                            "Loganberry"
                        ],
                        "use": "Idéale en compote, en smoothies ou pour les sauces fruitées."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            73,
                            171
                        ],
                        "car": "Peau noire, chair ferme et sucrée avec un goût très parfumé.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "mûre",
                            "Himalaya"
                        ],
                        "use": "Excellente en dessert, ou à ajouter dans des salades ou des gâteaux."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            73,
                            172
                        ],
                        "car": "Peau noire, chair tendre et sucrée avec une faible acidité.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "mûre",
                            "Ouachita"
                        ],
                        "use": "Parfaite pour les tartes, les confitures ou en garniture pour les yaourts."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            48,
                            73,
                            173
                        ],
                        "car": "Peau noire, chair ferme et sucrée avec une légère pointe de saveur sauvage.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "baies",
                            "mûre",
                            "Chester"
                        ],
                        "use": "À déguster telle quelle, ou utilisée dans les sauces et les pâtisseries."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            74,
                            174
                        ],
                        "car": "Petite taille, couleur jaune dorée, goût très sucré et parfumé.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "ananas",
                            "Victoria"
                        ],
                        "use": "Idéal pour être consommé frais, en tranches, ou dans les salades de fruits."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            74,
                            175
                        ],
                        "car": "Taille plus petite que l'classique, chair très juteuse et sucrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "ananas",
                            "Queen"
                        ],
                        "use": "Parfait pour les smoothies, les desserts ou pour être mangé nature."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            74,
                            176
                        ],
                        "car": "Couleur rouge-orangée, goût légèrement acidulé, texture plus fibreuse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "ananas",
                            "Red Spanish"
                        ],
                        "use": "Souvent utilisé dans les plats tropicaux, en salade ou pour des marinades."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            74,
                            177
                        ],
                        "car": "Grande taille, peau dorée et chair sucrée et tendre.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "ananas",
                            "Golden"
                        ],
                        "use": "Idéal pour les desserts, en tranches ou en purée pour des sauces sucrées."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            74,
                            178
                        ],
                        "car": "Fruit petit mais très sucré et tendre, avec une saveur très parfumée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "ananas",
                            "Queen of the Tropics"
                        ],
                        "use": "Idéal pour les desserts exotiques, ou à ajouter dans des cocktails."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            74,
                            179
                        ],
                        "car": "Grande taille, goût doux et sucré avec un faible taux d'acidité.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "ananas",
                            "Smooth Cayenne"
                        ],
                        "use": "Parfait pour être utilisé dans les sauces, les smoothies ou même dans les plats salés."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            74,
                            180
                        ],
                        "car": "Peau rouge, chair jaune foncé, goût sucré et légèrement acidulé.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "ananas",
                            "Red Jamaican"
                        ],
                        "use": "Souvent utilisé dans les recettes caribéennes, à griller ou en salade."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            74,
                            181
                        ],
                        "car": "Peau noire, texture plus ferme et un goût sucré légèrement épicé.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "ananas",
                            "Black Spanish"
                        ],
                        "use": "Utilisé dans des plats tropicaux ou pour être transformé en jus ou en conserve."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            74,
                            182
                        ],
                        "car": "de petite taille, chair très sucrée et parfumée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "ananas",
                            "Petite"
                        ],
                        "use": "Idéal pour des en-cas ou pour des recettes rapides en salades de fruits."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            74,
                            183
                        ],
                        "car": "Peau dorée et chair extrêmement douce et sucrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "ananas",
                            "Golden Delicious"
                        ],
                        "use": "Idéal pour les salades de fruits frais, les smoothies ou en garniture de gâteaux."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            75,
                            184
                        ],
                        "car": "Peau rugueuse, noire et bosselée, chair crémeuse et savoureuse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "avocat",
                            "Hass"
                        ],
                        "use": "Parfait pour le guacamole, les salades et les toasts."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            75,
                            185
                        ],
                        "car": "Peau fine, vert clair, chair douce et moins crémeuse que l'Hass.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "avocat",
                            "Fuerte"
                        ],
                        "use": "Idéal pour les salades fraîches ou en tranches dans des sandwichs."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            75,
                            186
                        ],
                        "car": "Peau fine, verte, texture crémeuse et goût plus doux.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "avocat",
                            "Bacon"
                        ],
                        "use": "Parfait pour les préparations froides, comme les smoothies et les salades."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            75,
                            187
                        ],
                        "car": "Peau brillante, vert clair, texture plus légère et moins grasse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "avocat",
                            "Zutano"
                        ],
                        "use": "Idéal pour les plats de fruits frais, les salades ou les garnitures légères."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            75,
                            188
                        ],
                        "car": "Peau rugueuse, de couleur verte foncée, et une chair très crémeuse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "avocat",
                            "Pinkerton"
                        ],
                        "use": "Parfait pour les purées, les soupes ou dans les recettes de desserts."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            75,
                            189
                        ],
                        "car": "Plus gros que l'Hass, avec une peau plus lisse et une chair crémeuse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "avocat",
                            "Lamb Hass"
                        ],
                        "use": "Idéal pour les salades, les sandwiches ou pour être dégusté nature."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            75,
                            190
                        ],
                        "car": "Peau fine et lisse, texture plus délicate et crémeuse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "avocat",
                            "Nabal"
                        ],
                        "use": "Parfait pour les salades ou les préparations en tartines et smoothies."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            75,
                            191
                        ],
                        "car": "Peau fine, verte, avec une chair fondante et douce.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "avocat",
                            "Sir Prize"
                        ],
                        "use": "Utilisez-le dans des recettes de guacamole ou en salade."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            75,
                            192
                        ],
                        "car": "Peau lisse, de couleur verte foncée, goût doux et sucré.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "avocat",
                            "Sharwil"
                        ],
                        "use": "Parfait pour les plats frais, les salades et les dips."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            75,
                            193
                        ],
                        "car": "Peau noire et lisse, chair douce et légèrement sucrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "avocat",
                            "Mexicola"
                        ],
                        "use": "Idéal pour les plats mexicains, comme les tacos ou les tortillas."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            75,
                            194
                        ],
                        "car": "Peau lisse, vert clair, chair dense et crémeuse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "avocat",
                            "Green Mexican"
                        ],
                        "use": "Idéal pour les recettes de guacamole ou comme garniture dans les plats de viande."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            75,
                            195
                        ],
                        "car": "Peau rougeâtre et douce, avec une chair riche et crémeuse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "avocat",
                            "Red"
                        ],
                        "use": "Utilisez-le dans des smoothies ou pour ajouter de la texture à vos salades."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            76,
                            196
                        ],
                        "car": "Peau jaune vif, chair douce et sucrée, texture tendre.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "banane",
                            "Cavendish"
                        ],
                        "use": "Parfaite pour une consommation crue, en dessert ou en smoothie."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            76,
                            197
                        ],
                        "car": "Peau épaisse, verte ou jaune, chair ferme et moins sucrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "banane",
                            "Plantain"
                        ],
                        "use": "Idéale cuite, en friture, purée ou en accompagnement salé."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            76,
                            198
                        ],
                        "car": "Peau rougeâtre, chair crémeuse et plus sucrée que la Cavendish.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "banane",
                            "Rouge"
                        ],
                        "use": "Parfaite en dessert, en compote ou nature."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            76,
                            199
                        ],
                        "car": "Peau épaisse, jaune avec des extrémités carrées, chair citronnée et ferme.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "banane",
                            "Burro"
                        ],
                        "use": "Idéale pour la cuisson ou en salade de fruits."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            76,
                            200
                        ],
                        "car": "Peau jaune, taille moyenne, chair douce et parfumée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "banane",
                            "Mysore"
                        ],
                        "use": "À consommer crue, en snack ou dans les desserts."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            76,
                            201
                        ],
                        "car": "Petite taille, peau fine jaune, chair très sucrée et tendre.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "banane",
                            "Baby (ou Nain)"
                        ],
                        "use": "Idéale en collation, dans les smoothies ou en dessert."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            76,
                            202
                        ],
                        "car": "Peau bleutée à maturité, chair dense et sucrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "banane",
                            "Bleu"
                        ],
                        "use": "Parfaite pour les desserts ou consommée nature."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            76,
                            203
                        ],
                        "car": "Peau jaune avec des taches brunes, chair ferme et légèrement acidulée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "banane",
                            "Goldfinger"
                        ],
                        "use": "Idéale pour les salades de fruits et la cuisson."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            76,
                            204
                        ],
                        "car": "Groupe de bananes serrées ensemble, chair ferme et douce.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "banane",
                            "Praying Hands"
                        ],
                        "use": "À consommer crue ou en dessert."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            76,
                            205
                        ],
                        "car": "Chair très douce, texture onctueuse rappelant la crème glacée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "banane",
                            "Ice Cream"
                        ],
                        "use": "Parfaite pour les smoothies, glaces maison ou desserts."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            77,
                            206
                        ],
                        "car": "Très grosse, peau ridée, chair moelleuse, goût riche et caramelisé.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "datte",
                            "Medjool"
                        ],
                        "use": "Idéale à déguster nature, en en-cas ou farcie aux noix."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            77,
                            207
                        ],
                        "car": "Peau fine, chair translucide, saveur douce et équilibrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "datte",
                            "Deglet Nour"
                        ],
                        "use": "Parfaite pour les recettes sucrées-salées ou en pâtisserie."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            77,
                            208
                        ],
                        "car": "Petite, noire, texture fondante, goût délicatement épicé.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "datte",
                            "Ajwa"
                        ],
                        "use": "Consommée nature, notamment pendant le Ramadan ou en cure santé."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            77,
                            209
                        ],
                        "car": "Moins sucrée, peau fine, très tendre, couleur brun rougeâtre.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "datte",
                            "Khadrawy"
                        ],
                        "use": "Idéale pour les desserts légers ou les smoothies."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            77,
                            210
                        ],
                        "car": "Ronde, très douce, jaune à maturité, texture fondante.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "datte",
                            "Barhi"
                        ],
                        "use": "Délicieuse crue ou en version fraîche, à consommer rapidement."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            77,
                            211
                        ],
                        "car": "Moins sucrée, ferme, peau lisse et couleur dorée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "datte",
                            "Zahidi"
                        ],
                        "use": "Convient parfaitement aux plats mijotés et aux sauces sucrées-salées."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            77,
                            212
                        ],
                        "car": "Très sucrée, chair fondante, peau fine, souvent consommée fraîche.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "datte",
                            "Sukkari"
                        ],
                        "use": "Idéale pour les goûters ou les préparations sans sucre ajouté."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            77,
                            213
                        ],
                        "car": "Très moelleuse, noire, goût intense et texture presque crémeuse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "datte",
                            "Mazafati"
                        ],
                        "use": "À savourer nature ou en garniture de desserts onctueux."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            77,
                            214
                        ],
                        "car": "Sucrée, de taille moyenne, texture tendre et goût de miel.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "datte",
                            "Hallawi"
                        ],
                        "use": "À consommer telle quelle ou incorporée dans des pâtisseries."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            77,
                            215
                        ],
                        "car": "Allongée, peau lisse, brun foncé, goût doux et texture dense.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "datte",
                            "Dayri"
                        ],
                        "use": "Convient bien aux préparations cuites ou comme base de pâte à datte."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            77,
                            216
                        ],
                        "car": "Sèche, peau ferme, goût de noisette, très peu sucrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "datte",
                            "Thoory"
                        ],
                        "use": "Idéale à râper ou à mixer dans les barres énergétiques."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            77,
                            217
                        ],
                        "car": "Noire, allongée, goût intense, texture mi-fondante, riche en fibres.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "datte",
                            "Safawi"
                        ],
                        "use": "Parfaite pour les cures nutritionnelles ou comme en-cas sain"
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            78,
                            218
                        ],
                        "car": "Peau brune et veloutée, chair verte et juteuse avec de petites graines noires comestibles.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "kiwi",
                            "Vert (Hayward)"
                        ],
                        "use": "À déguster tel quel, en salade de fruits ou en smoothie."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            78,
                            219
                        ],
                        "car": "Peau lisse et dorée, chair jaune vif, sucrée et douce.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "kiwi",
                            "Doré (Golden)"
                        ],
                        "use": "Idéal pour des desserts, salades ou même en garniture de tartes."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            78,
                            220
                        ],
                        "car": "Petit fruit avec une peau comestible, chair verte douce et sucrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "kiwi",
                            "Baby"
                        ],
                        "use": "À manger en une bouchée, parfait pour les encas ou les salades."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            78,
                            221
                        ],
                        "car": "Peau fine et lisse, chair très sucrée avec peu de graines.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "kiwi",
                            "Arctic"
                        ],
                        "use": "À déguster frais ou à ajouter dans des recettes de desserts crémeux."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            78,
                            222
                        ],
                        "car": "Peau fine et rougeâtre, chair verte avec des touches de rouge, goût légèrement acidulé.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "kiwi",
                            "Red"
                        ],
                        "use": "Parfait pour les smoothies ou à déguster avec un peu de miel pour équilibrer l'acidité."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            78,
                            223
                        ],
                        "car": "Une version plus douce du doré, avec une chair encore plus sucrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "kiwi",
                            "Gold 2"
                        ],
                        "use": "Excellente pour les salades de fruits ou dans des recettes de pâtisseries."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            78,
                            224
                        ],
                        "car": "Petit, doux, avec une peau comestible rouge-vert et une chair sucrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "kiwi",
                            "Baby Red"
                        ],
                        "use": "À manger tel quel, ou à ajouter dans des salades pour une touche sucrée et colorée."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            78,
                            225
                        ],
                        "car": "Peau lisse, légèrement veloutée, chair vert clair avec une texture croquante.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "kiwi",
                            "Mountain"
                        ],
                        "use": "À consommer en salade de fruits ou en garniture de plats salés pour une note sucrée."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            78,
                            226
                        ],
                        "car": "Fruit de grande taille, avec une peau épaisse et une chair très juteuse et sucrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "kiwi",
                            "Jumbo"
                        ],
                        "use": "Idéal pour les smoothies ou à couper en tranches et ajouter dans vos céréales ou mueslis."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            78,
                            227
                        ],
                        "car": "Peau douce et rose, chair ferme et sucrée avec un goût frais et acidulé.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "kiwi",
                            "Arctic Rose"
                        ],
                        "use": "Parfait pour les tartes, les confitures ou à déguster en fruit frais."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            79,
                            228
                        ],
                        "car": "Peau lisse, jaune-orangé avec une chair fibreuse et une saveur sucrée intense.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "mangue",
                            "Alphonso"
                        ],
                        "use": "Idéale pour être dégustée fraîche ou dans des desserts comme les lassis et les sorbets."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            79,
                            229
                        ],
                        "car": "Peau verte à jaune, chair douce, juteuse et peu fibreuse, avec une saveur sucrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "mangue",
                            "Kent"
                        ],
                        "use": "Excellente pour les smoothies, salades de fruits et desserts frais."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            79,
                            230
                        ],
                        "car": "Peau rouge et verte, chair douce et juteuse avec un goût sucré et légèrement acidulé.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "mangue",
                            "Haden"
                        ],
                        "use": "Parfaite pour la consommation fraîche, en jus ou en sauces."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            79,
                            231
                        ],
                        "car": "Peau épaisse et rougeâtre, chair sucrée et fibreuse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "mangue",
                            "Tommy Atkins"
                        ],
                        "use": "À utiliser pour les smoothies, salades de fruits ou dans des recettes sucrées-salées."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            79,
                            232
                        ],
                        "car": "Petite, peau dorée, chair extrêmement douce, sans fibres et très sucrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "mangue",
                            "Ataulfo"
                        ],
                        "use": "Idéale pour les desserts, en particulier pour les tartes ou dans les lassis."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            79,
                            233
                        ],
                        "car": "Peau jaune-orangée, chair fibreuse, sucrée et juteuse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "mangue",
                            "Palmer"
                        ],
                        "use": "Parfaite pour les smoothies ou à déguster telle quelle, avec un peu de citron."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            79,
                            234
                        ],
                        "car": "Peau verte et jaune, chair douce, juteuse et très sucrée, sans fibres.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "mangue",
                            "Keitt"
                        ],
                        "use": "Idéale pour la consommation fraîche ou en jus."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            79,
                            235
                        ],
                        "car": "Peau verte et jaune, chair sucrée et légèrement acidulée, avec un parfum agréable.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "mangue",
                            "Francis"
                        ],
                        "use": "À déguster en fruit frais ou dans des recettes de salades ou de smoothies."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            79,
                            236
                        ],
                        "car": "Peau orange vif, chair juteuse et très sucrée avec peu de fibres.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "mangue",
                            "Fairchild"
                        ],
                        "use": "À consommer telle quelle ou utilisée dans des desserts exotiques."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            79,
                            237
                        ],
                        "car": "Peau jaune pâle, chair délicate, sucrée et douce avec très peu de fibres.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "mangue",
                            "Nam Doc Mai"
                        ],
                        "use": "Excellente pour les desserts thaïlandais ou pour être consommée en fruit frais."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            83,
                            238
                        ],
                        "car": "Fruit moyen à peau jaune, chair orange vif, douce et juteuse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "papaye",
                            "Solo"
                        ],
                        "use": "À savourer nature, en salade ou smoothie."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            83,
                            239
                        ],
                        "car": "Très grande à chair orange intense et goût sucré prononcé.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "papaye",
                            "Maradol"
                        ],
                        "use": "Excellente pour jus frais, compotes et desserts."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            83,
                            240
                        ],
                        "car": "Peau rouge-orangée, chair douce et parfumée, riche en bêta-carotène.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "papaye",
                            "Sunrise"
                        ],
                        "use": "Idéale en smoothie, salades de fruits ou desserts colorés."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            83,
                            241
                        ],
                        "car": "Très grosse papaye, chair juteuse, légèrement acidulée et parfumée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "papaye",
                            "Formosa"
                        ],
                        "use": "Parfaite pour jus frais, sorbets ou compotes maison."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            83,
                            242
                        ],
                        "car": "Fruit moyen à peau rouge clair, chair orange tendre et très sucrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "papaye",
                            "Red Lady"
                        ],
                        "use": "À consommer fraîche, en smoothie ou dessert exotique."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            83,
                            243
                        ],
                        "car": "Chair orange vif, parfum intense, texture ferme mais juteuse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "papaye",
                            "Waimanalo"
                        ],
                        "use": "Idéale pour jus, compotes ou plats sucrés-salés."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            83,
                            244
                        ],
                        "car": "Peau jaune à orange, chair tendre et très parfumée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "papaye",
                            "Tainung"
                        ],
                        "use": "Parfaite en salade de fruits ou pour tartiner en compote."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            83,
                            245
                        ],
                        "car": "Fruit de taille moyenne, chair douce et sucrée, légèrement acidulée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "papaye",
                            "Hawaiian"
                        ],
                        "use": "À savourer nature ou dans des jus exotiques et smoothies."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            83,
                            246
                        ],
                        "car": "Peau dorée, chair orange clair, texture fondante et goût sucré délicat.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "papaye",
                            "Golden"
                        ],
                        "use": "Idéale en dessert, smoothie ou compote maison."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            83,
                            247
                        ],
                        "car": "Petite à moyenne, chair très sucrée, parfumée et riche en nutriments.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "papaye",
                            "Sunrise Solo"
                        ],
                        "use": "À consommer fraîche, en jus ou smoothie énergétique."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            84,
                            248
                        ],
                        "car": "Peau rose ou rouge foncé, chair blanche, juteuse et sucrée avec une légère note florale.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "litchi",
                            "de Chine"
                        ],
                        "use": "À déguster frais, dans des salades de fruits ou pour accompagner des desserts légers."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            84,
                            249
                        ],
                        "car": "Peau rouge brillant, chair translucide et légèrement acidulée avec un goût rafraîchissant.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "litchi",
                            "de Thaïlande"
                        ],
                        "use": "Idéal dans des smoothies, desserts glacés ou en compote."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            84,
                            250
                        ],
                        "car": "Peau sombre et plus épaisse, chair plus ferme et moins sucrée que les autres variétés.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "litchi",
                            "Black"
                        ],
                        "use": "Parfait pour des préparations exotiques comme les sorbets ou les sauces de fruits."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            84,
                            251
                        ],
                        "car": "Peau fine, rouge vif, chair d'une grande douceur avec une saveur légèrement acidulée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "litchi",
                            "de Madagascar"
                        ],
                        "use": "À savourer frais ou en ajout dans des cocktails et smoothies."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            84,
                            252
                        ],
                        "car": "Peau rose clair à rouge, chair fondante et sucrée avec une note de rose bien marquée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "litchi",
                            "Rose"
                        ],
                        "use": "Excellente pour des desserts sucrés comme des crèmes brûlées, des tartes ou des salades de fruits."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            84,
                            253
                        ],
                        "car": "Peau rouge vif avec une texture plus ferme et une chair juteuse, légèrement moins sucrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "litchi",
                            "Wai Chee"
                        ],
                        "use": "Parfait en en-cas ou en salade de fruits frais avec un peu de menthe."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            84,
                            254
                        ],
                        "car": "Peau rouge à rose, très sucré et parfumé, avec une chair fine et juteuse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "litchi",
                            "Mahachanok"
                        ],
                        "use": "Idéal pour les cocktails exotiques ou pour être dégusté nature."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            84,
                            255
                        ],
                        "car": "Peau plus claire, plus douce, avec une chair légèrement moins juteuse mais plus sucrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "litchi",
                            "Longan"
                        ],
                        "use": "Utilisé dans des plats sucrés-salés ou pour aromatiser des thés glacés."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            84,
                            256
                        ],
                        "car": "Peau rouge avec une chair translucide et fondante, un goût très sucré et floral.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "litchi",
                            "Lianhua"
                        ],
                        "use": "À savourer frais ou dans des recettes de desserts fins et raffinés."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            49,
                            84,
                            257
                        ],
                        "car": "Peau jaune doré, chair ferme et sucrée avec une légère touche d’acidité.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "exotiques",
                            "litchi",
                            "Sunlight"
                        ],
                        "use": "Parfait pour les smoothies, les glaces maison et les tartes fruitées."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            50,
                            90,
                            258
                        ],
                        "car": "Cerise précoce, rouge foncé, très juteuse et sucrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à noyau",
                            "cerise",
                            "Burlat"
                        ],
                        "use": "À déguster fraîche ou en salade de fruits."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            50,
                            90,
                            259
                        ],
                        "car": "Peau jaune rosée, chair ferme, douce et croquante.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à noyau",
                            "cerise",
                            "Bigarreau Napoléon"
                        ],
                        "use": "Idéale pour les conserves et les clafoutis."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            50,
                            90,
                            260
                        ],
                        "car": "Grosse cerise rouge clair, sucrée avec peu d’acidité.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à noyau",
                            "cerise",
                            "Summit"
                        ],
                        "use": "Parfaite en collation ou dans les desserts."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            50,
                            90,
                            261
                        ],
                        "car": "Rouge foncé, peau fine, goût équilibré entre sucré et acidulé.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à noyau",
                            "cerise",
                            "Reverchon"
                        ],
                        "use": "À utiliser pour les confitures ou les tartes."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            50,
                            90,
                            262
                        ],
                        "car": "Forme allongée, chair ferme, goût sucré.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à noyau",
                            "cerise",
                            "Cœur de Pigeon"
                        ],
                        "use": "Parfaite pour les confiseries ou la dégustation nature."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            50,
                            90,
                            263
                        ],
                        "car": "Noire brillante, chair ferme et croquante, goût doux.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à noyau",
                            "cerise",
                            "Hedelfingen"
                        ],
                        "use": "Idéale pour les gâteaux ou à congeler."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            50,
                            90,
                            264
                        ],
                        "car": "Précoce, petite taille, rouge foncé, goût sucré prononcé.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à noyau",
                            "cerise",
                            "Early Rivers"
                        ],
                        "use": "À savourer fraîche ou en confiture maison."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            50,
                            90,
                            265
                        ],
                        "car": "Cerise acide, rouge sombre à noire, très juteuse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à noyau",
                            "cerise",
                            "Morello"
                        ],
                        "use": "Parfaite pour les tartes, sauces ou sirops."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            50,
                            90,
                            266
                        ],
                        "car": "Cerise acidulée, peau rouge clair, chair tendre.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à noyau",
                            "cerise",
                            "Montmorency"
                        ],
                        "use": "Utilisée pour les confitures, compotes et jus."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            50,
                            90,
                            267
                        ],
                        "car": "Rouge foncé, taille moyenne, goût équilibré et parfumé.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à noyau",
                            "cerise",
                            "Van"
                        ],
                        "use": "Convient aux salades, tartes ou à manger nature."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            50,
                            90,
                            268
                        ],
                        "car": "Très tardive, grosse, peau noire, chair croquante et sucrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à noyau",
                            "cerise",
                            "Regina"
                        ],
                        "use": "Parfaite à conserver ou pour les pâtisseries."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            50,
                            90,
                            269
                        ],
                        "car": "Noire, tardive, goût sucré intense et texture juteuse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à noyau",
                            "cerise",
                            "Tardif de Vignola"
                        ],
                        "use": "Idéale pour les sirops,"
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            91,
                            270
                        ],
                        "car": "Peau épaisse et piquante, chair juteuse et sucrée avec des graines croquantes.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "figue",
                            "de Barbarie"
                        ],
                        "use": "À consommer fraîche, en jus ou confiture après pelage."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            91,
                            271
                        ],
                        "car": "Peau violette foncée, chair douce et très sucrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "figue",
                            "Noire de Caromb"
                        ],
                        "use": "Parfaite nature, en desserts ou dans les salades de fruits."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            91,
                            272
                        ],
                        "car": "Peau verte, chair tendre et goût subtil, moins sucrée que les variétés foncées.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "figue",
                            "Verte de Solliès"
                        ],
                        "use": "Idéale en salade ou associée à des fromages frais."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            91,
                            273
                        ],
                        "car": "Peau jaune verdâtre, chair blanche et douce avec peu de graines.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "figue",
                            "Kadota"
                        ],
                        "use": "Excellente en confiture ou séchée pour un goût doux."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            91,
                            274
                        ],
                        "car": "Peau vert pâle à jaune, chair rouge vif, très juteuse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "figue",
                            "Adriatique"
                        ],
                        "use": "Idéale fraîche, en desserts ou en smoothies."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            91,
                            275
                        ],
                        "car": "Peau noire brillante, chair rouge foncé, saveur sucrée et intense.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "figue",
                            "Mission"
                        ],
                        "use": "Parfaite pour manger fraîche, en pâtisserie ou séchée."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            91,
                            276
                        ],
                        "car": "Peau brun rougeâtre, chair rose clair, saveur douce et légèrement acidulée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "figue",
                            "Brown Turkey"
                        ],
                        "use": "Idéale en salade, confiture ou en accompagnement de plats salés."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            91,
                            277
                        ],
                        "car": "Peau verte rayée de violet, chair sucrée et ferme.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "figue",
                            "Panachée"
                        ],
                        "use": "À consommer fraîche, en tartes ou accompagnée de fromages."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            91,
                            278
                        ],
                        "car": "Peau violet profond, chair rouge, texture fondante et goût très sucré.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "figue",
                            "Violette de Solliès"
                        ],
                        "use": "Parfaite nature, en confiture ou en desserts glacés."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            91,
                            279
                        ],
                        "car": "Peau vert clair à jaune, chair rouge et sucrée, variété méditerranéenne.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "figue",
                            "Dalmatie"
                        ],
                        "use": "Idéale en salade de fruits ou séchée pour le snacking."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            92,
                            280
                        ],
                        "car": "Fruit large, peau jaune doré, chair ferme et très aromatique.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "coing",
                            "Champion"
                        ],
                        "use": "Idéal pour les gelées, pâtes de fruits et confitures maison."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            92,
                            281
                        ],
                        "car": "Originaire des Balkans, fruit volumineux, chair plus tendre que d’autres variétés.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "coing",
                            "Vranja"
                        ],
                        "use": "Parfait pour les compotes, tartes ou en accompagnement de plats salés."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            92,
                            282
                        ],
                        "car": "Forme ronde, peau jaune pâle, parfum doux et sucré.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "coing",
                            "Leskovac"
                        ],
                        "use": "À utiliser pour les desserts, les sirops ou les jus de fruits maison."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            92,
                            283
                        ],
                        "car": "Chair moins granuleuse, arôme intense, peut se consommer légèrement crue.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "coing",
                            "Aromatnaya"
                        ],
                        "use": "Adapté pour les confitures ou cuit avec des plats mijotés."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            92,
                            284
                        ],
                        "car": "Variété américaine, très productive, fruit moyen à grand, parfum marqué.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "coing",
                            "Meech's Prolific"
                        ],
                        "use": "Parfait pour les compotes épaisses et les confitures traditionnelles."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            92,
                            285
                        ],
                        "car": "Fruit oblong, peau jaune-verte, chair tendre et parfumée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "coing",
                            "Portugal"
                        ],
                        "use": "Idéal pour les gelées translucides et les desserts raffinés."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            92,
                            286
                        ],
                        "car": "Originaire de Turquie, fruit long et parfumé, peau lisse, chair très ferme.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "coing",
                            "Smyrne"
                        ],
                        "use": "Parfait pour les confitures à cuisson longue et les conserves."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            92,
                            287
                        ],
                        "car": "Fruit large, forme irrégulière, arôme floral, texture granuleuse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "coing",
                            "Bereczki"
                        ],
                        "use": "À privilégier pour les pâtes de coings ou les compotes épaisses."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            92,
                            288
                        ],
                        "car": "Variété ancienne d’Iran, fruit allongé, goût délicat et épicé.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "coing",
                            "Isfahan"
                        ],
                        "use": "Utilisez-le pour parfumer les plats orientaux ou les sauces sucrées-salées."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            92,
                            289
                        ],
                        "car": "Fruit rond, peau jaune intense, très odorant, chair dense.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "coing",
                            "Sébastopol"
                        ],
                        "use": "Excellent pour les confitures, gelées et compotes parfumées."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            92,
                            290
                        ],
                        "car": "Variété rare, fruit de taille moyenne, goût doux et agréable.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "coing",
                            "Van Deman"
                        ],
                        "use": "Parfait pour des recettes sucrées comme les tartes ou les gâteaux aux fruits."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            92,
                            291
                        ],
                        "car": "Très gros fruits, peau lisse, chair très parfumée, riche en pectine.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "coing",
                            "Cydora Robusta"
                        ],
                        "use": "Idéal pour les gelées maison, ou associé à des plats de viande."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            93,
                            292
                        ],
                        "car": "Peau verte, chair ferme",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "pomme",
                            "boskoop"
                        ],
                        "use": "idéale pour la compote"
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            93,
                            293
                        ],
                        "car": "Peau verte, chair ferme et croquante avec une saveur acidulée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "pomme",
                            "Granny Smith"
                        ],
                        "use": "Idéale pour les tartes, salades de fruits ou en jus."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            93,
                            294
                        ],
                        "car": "Peau jaune, chair sucrée et tendre avec une texture juteuse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "pomme",
                            "Golden Delicious"
                        ],
                        "use": "Parfaite à croquer, en compote ou dans des desserts sucrés."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            93,
                            295
                        ],
                        "car": "Peau rouge à jaune, chair croquante et très sucrée avec un goût parfumé.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "pomme",
                            "Fuji"
                        ],
                        "use": "Excellente pour les encas, les salades de fruits ou les smoothies."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            93,
                            296
                        ],
                        "car": "Peau rouge et jaune, chair ferme et croquante avec un goût équilibré entre sucré et acidulé.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "pomme",
                            "Braeburn"
                        ],
                        "use": "À déguster nature, en tarte ou dans des salades de fruits."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            93,
                            297
                        ],
                        "car": "Peau rouge et orange, chair sucrée et croquante avec une texture légère.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "pomme",
                            "Gala"
                        ],
                        "use": "Idéale pour les desserts, salades ou à manger directement."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            93,
                            298
                        ],
                        "car": "Peau jaune et rouge, chair croquante et sucrée avec une légère acidité.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "pomme",
                            "Jonagold"
                        ],
                        "use": "Parfaite pour les tartes, compotes ou dans des plats sucrés-salés."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            93,
                            299
                        ],
                        "car": "Peau rouge avec une chair tendre, sucrée et légèrement acide.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "pomme",
                            "McIntosh"
                        ],
                        "use": "Idéale pour les compotes, les sauces ou à manger nature."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            93,
                            300
                        ],
                        "car": "Peau jaune et rouge, chair croquante avec une saveur sucrée et acidulée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "pomme",
                            "Braeburn"
                        ],
                        "use": "À utiliser en pâtisserie ou à consommer en salade de fruits."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            93,
                            301
                        ],
                        "car": "Peau jaune vif, chair croquante et sucrée avec une texture juteuse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "pomme",
                            "Opal"
                        ],
                        "use": "À manger directement, en salades ou en jus."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            93,
                            302
                        ],
                        "car": "Peau rouge intense, chair douce et sucrée avec une texture ferme.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "pomme",
                            "Red Delicious"
                        ],
                        "use": "Parfaite pour les encas, les salades ou les jus de fruits frais."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            94,
                            303
                        ],
                        "car": "Peau jaune-verte, chair tendre et juteuse, goût sucré prononcé.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "poire",
                            "Williams"
                        ],
                        "use": "Idéale pour la consommation fraîche et les desserts."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            94,
                            304
                        ],
                        "car": "Peau jaune-rouge, chair tendre et juteuse, goût sucré prononcé.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "poire",
                            "williams rouge"
                        ],
                        "use": "Idéale pour la consommation fraîche et les desserts."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            94,
                            305
                        ],
                        "car": "Peau verte à jaune-brun, chair ferme et parfumée, saveur douce.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "poire",
                            "Conférence"
                        ],
                        "use": "Parfaite pour tartes, compotes et en salade de fruits."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            94,
                            306
                        ],
                        "car": "Peau lisse, verte avec des touches rouges, chair fondante et sucrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "poire",
                            "Comice"
                        ],
                        "use": "Excellente nature, en fromage ou dessert raffiné."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            94,
                            307
                        ],
                        "car": "Grande poire, chair très juteuse et parfumée, texture fondante.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "poire",
                            "Doyenné du Comice"
                        ],
                        "use": "À déguster fraîche, pochée ou en compote."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            94,
                            308
                        ],
                        "car": "Peau brune, chair ferme et sucrée, goût légèrement épicé.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "poire",
                            "Bosc"
                        ],
                        "use": "Idéale pour cuisson, tartes, gratins ou rôtie au four."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            94,
                            309
                        ],
                        "car": "Petite poire, peau rouge mouchetée, chair juteuse et croquante.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "poire",
                            "Forelle"
                        ],
                        "use": "À croquer, en salade de fruits ou pour décoration."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            94,
                            310
                        ],
                        "car": "Peau jaune-brun, chair ferme et juteuse, saveur douce et parfumée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "poire",
                            "Passe-Crassane"
                        ],
                        "use": "Parfaite pour tartes, compotes et cuisson au four."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            94,
                            311
                        ],
                        "car": "Peau verte jaunissant à maturité, chair tendre et sucrée, juteuse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "poire",
                            "Packham"
                        ],
                        "use": "À déguster nature, en dessert ou en jus."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            94,
                            312
                        ],
                        "car": "Peau verte clair, chair ferme, goût doux et juteux.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "poire",
                            "Anjou"
                        ],
                        "use": "Excellente en salade de fruits, compotes ou cuisson."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            94,
                            313
                        ],
                        "car": "Peau rouge brillante, chair juteuse, parfumée et sucrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "poire",
                            "Red Bartlett"
                        ],
                        "use": "À consommer fraîche, en salade ou pour desserts raffinés."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            95,
                            314
                        ],
                        "car": "Grains verts à dorés, chair juteuse et douce, parfum léger et sucré.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "raisin",
                            "Blanc"
                        ],
                        "use": "Parfait pour être consommé frais ou en salade de fruits."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            95,
                            315
                        ],
                        "car": "Grains rouges ou pourpres, chair sucrée et parfumée, texture croquante.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "raisin",
                            "Rouge"
                        ],
                        "use": "Idéal pour desserts, smoothies ou jus frais."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            95,
                            316
                        ],
                        "car": "Grains foncés, chair sucrée et riche en antioxydants, goût intense.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "raisin",
                            "Noir"
                        ],
                        "use": "À déguster nature, en jus ou en compotes maison."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            95,
                            317
                        ],
                        "car": "Petits grains aromatiques, saveur très parfumée et sucrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "raisin",
                            "Muscat"
                        ],
                        "use": "Exquis en dessert, confiture ou pour parfumer pâtisseries."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            95,
                            318
                        ],
                        "car": "Grains verts translucides, chair juteuse et très sucrée, parfum fruité.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "raisin",
                            "Italia"
                        ],
                        "use": "Idéal pour consommation fraîche ou pour jus maison."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            95,
                            319
                        ],
                        "car": "Grains bleu-noir, chair parfumée et sucrée, goût intense de raisin.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "raisin",
                            "Concord"
                        ],
                        "use": "Excellente base pour jus, gelées ou smoothies."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            95,
                            320
                        ],
                        "car": "Grains verts, sans pépins, chair douce et juteuse, parfum léger.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "raisin",
                            "Thompson Seedless"
                        ],
                        "use": "Parfait pour encas, salades ou raisins secs maison."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            95,
                            321
                        ],
                        "car": "Grands grains rouges, chair juteuse et sucrée, texture ferme.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "raisin",
                            "Red Globe"
                        ],
                        "use": "Idéal pour consommation fraîche ou décoration de desserts."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            95,
                            322
                        ],
                        "car": "Grains rouges éclatants, chair sucrée et légèrement acidulée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "raisin",
                            "Flame"
                        ],
                        "use": "À savourer nature, en jus ou pour smoothies fruités."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            51,
                            95,
                            323
                        ],
                        "car": "Grains rouges foncés, chair croquante et sucrée, goût raffiné.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à pépins",
                            "raisin",
                            "Crimson"
                        ],
                        "use": "Parfait pour salades de fruits, jus et desserts variés."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            96,
                            324
                        ],
                        "car": "Grosse châtaigne hybride, brillante et très facile à éplucher.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "châtaigne",
                            "Bouche de Bétizac"
                        ],
                        "use": "Parfaite pour les grillades ou à cuire à l’eau, excellente en consommation fraîche."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            96,
                            325
                        ],
                        "car": "Fruit de gros calibre, chair sucrée et moelleuse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "châtaigne",
                            "Marron de Lyon"
                        ],
                        "use": "Idéale pour les marrons glacés ou les plats de fête."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            96,
                            326
                        ],
                        "car": "Variété ancienne française, chair douce, parfumée, peu farineuse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "châtaigne",
                            "Comballe"
                        ],
                        "use": "Utilisée pour la cuisson au four ou dans les soupes."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            96,
                            327
                        ],
                        "car": "Chair tendre, légèrement sucrée, coque fine.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "châtaigne",
                            "Belle Épine"
                        ],
                        "use": "Adaptée à la consommation grillée ou bouillie."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            96,
                            328
                        ],
                        "car": "Variété ardéchoise, gros fruit, goût prononcé et sucré.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "châtaigne",
                            "Marron d’Aubenas"
                        ],
                        "use": "Parfait pour la confiserie ou la préparation de crème de marrons."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            96,
                            329
                        ],
                        "car": "Chair fine et farineuse, goût doux, coque épaisse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "châtaigne",
                            "Sardonne"
                        ],
                        "use": "Recommandée pour les soupes, veloutés ou purées."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            96,
                            330
                        ],
                        "car": "Chair très parfumée, texture moelleuse, écorce fine.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "châtaigne",
                            "Bouche Rouge"
                        ],
                        "use": "Idéale pour la farine ou les préparations sucrées."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            96,
                            331
                        ],
                        "car": "Hybride précoce, gros fruit brillant, bonne conservation.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "châtaigne",
                            "Précoce Migoule"
                        ],
                        "use": "Bonne pour la congélation, les plats salés ou en purée."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            96,
                            332
                        ],
                        "car": "Coque rousse, fine, fruit sucré et délicat.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "châtaigne",
                            "Roussette"
                        ],
                        "use": "Très bonne en cuisson à l’eau ou à incorporer dans les desserts."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            96,
                            333
                        ],
                        "car": "Fruit moyen, peau fine, saveur douce, chair homogène.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "châtaigne",
                            "Marron de Redon"
                        ],
                        "use": "À utiliser en soupe, farce ou pour les purées maison."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            96,
                            334
                        ],
                        "car": "Grosse châtaigne au goût légèrement noisetté, écorce fine.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "châtaigne",
                            "Marigoule"
                        ],
                        "use": "Bonne pour la transformation en farine ou pour les plats mijotés."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            96,
                            335
                        ],
                        "car": "Coque jaune dorée, fruit tendre, goût délicat.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "châtaigne",
                            "Dorée de Lyon"
                        ],
                        "use": "À déguster nature ou dans des plats automnaux sucrés-salés."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            97,
                            336
                        ],
                        "car": "Amandes brutes, non grillées ni salées, avec une saveur douce et naturelle.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "amande",
                            "Non Traitées"
                        ],
                        "use": "Idéales pour les encas, les desserts faits maison ou pour être ajoutées aux céréales du matin."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            97,
                            337
                        ],
                        "car": "Amandes légèrement grillées pour un goût plus prononcé et croquant.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "amande",
                            "Grillée"
                        ],
                        "use": "Parfaites pour les salades, les plats asiatiques ou en collation à emporter."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            97,
                            338
                        ],
                        "car": "dont la peau a été retirée, plus douce au goût et plus facile à digérer.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "amande",
                            "Émondée"
                        ],
                        "use": "Idéale pour les préparations de pâtes d’amandes, les gâteaux ou comme garniture dans les plats sucrés."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            97,
                            339
                        ],
                        "car": "réduite en fine poudre, souvent utilisée dans la pâtisserie.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "amande",
                            "en Poudre"
                        ],
                        "use": "Utilisée dans la préparation de macarons, gâteaux ou pour épaissir des sauces crémeuses."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            97,
                            340
                        ],
                        "car": "tranchée en fines lamelles, souvent utilisée pour ajouter du croquant aux plats.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "amande",
                            "Éffilée"
                        ],
                        "use": "Parfait pour saupoudrer sur les desserts, les salades ou les plats de légumes."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            97,
                            341
                        ],
                        "car": "réduite en une texture ultra-fine, idéale pour les recettes de pâte d’ou pour épaissir des sauces.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "amande",
                            "Moulue Fine"
                        ],
                        "use": "Essentielle pour la préparation de certaines pâtisseries comme les cakes ou pour en faire du lait d’maison."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            97,
                            342
                        ],
                        "car": "dans sa forme naturelle avec sa peau, riche en fibres et en antioxydants.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "amande",
                            "Complet"
                        ],
                        "use": "Idéale pour les encas sains ou à ajouter dans des mélanges de fruits secs."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            97,
                            343
                        ],
                        "car": "Variété d'italienne, douce, avec une peau fine et un goût sucré et délicat.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "amande",
                            "Tuono"
                        ],
                        "use": "Utilisée principalement dans la confection de pâte d’amande, de nougats ou dans les glaces artisanales."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            97,
                            344
                        ],
                        "car": "espagnole ronde et tendre, avec une saveur particulièrement douce et sucrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "amande",
                            "Marcona"
                        ],
                        "use": "Parfaite pour être grillée et servie en apéritif ou utilisée dans des desserts haut de gamme."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            97,
                            345
                        ],
                        "car": "de grande taille, avec un goût plus corsé et une texture ferme.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "amande",
                            "Carmine"
                        ],
                        "use": "Idéale pour les plats salés comme les salades méditerranéennes ou dans les plats de viande."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            97,
                            346
                        ],
                        "car": "californienne allongée et sucrée, idéale pour les recettes sucrées et salées.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "amande",
                            "Sonora"
                        ],
                        "use": "Parfaite pour les gâteaux, les crèmes ou dans les biscuits maison."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            97,
                            347
                        ],
                        "car": "Variété d’française à coque dure, connue pour sa qualité de saveur intense.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "amande",
                            "Ferragnès"
                        ],
                        "use": "Utilisée dans la confection de pain d’ou pour être consommée nature après torréfaction."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            102,
                            348
                        ],
                        "car": "Palmier de grande taille, fruit à coque épaisse et pulpe ferme.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "noix de coco",
                            "Tall"
                        ],
                        "use": "Idéale pour extraire le lait ou l’huile de coco."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            102,
                            349
                        ],
                        "car": "Palmier plus petit, fruit sucré avec eau de coco abondante.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "noix de coco",
                            "Dwarf (Nain)"
                        ],
                        "use": "À consommer fraîche, pour boire l’eau ou râper la pulpe."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            102,
                            350
                        ],
                        "car": "Coque orange, pulpe fine et eau très sucrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "noix de coco",
                            "King Coconut"
                        ],
                        "use": "Parfaite pour la consommation directe et les boissons rafraîchissantes."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            102,
                            351
                        ],
                        "car": "Pulpe gélatineuse, goût doux et texture moelleuse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "noix de coco",
                            "Macapuno"
                        ],
                        "use": "À utiliser dans les desserts, confiseries et pâtisseries."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            102,
                            352
                        ],
                        "car": "Croisement de variétés Tall et Dwarf, fruit riche en eau et pulpe ferme.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "noix de coco",
                            "Hybrid"
                        ],
                        "use": "Convient pour la production de lait, jus ou huile de coco."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            102,
                            353
                        ],
                        "car": "Coque verte, pulpe tendre et eau légèrement sucrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "noix de coco",
                            "Green Coconut"
                        ],
                        "use": "À boire directement ou pour préparer des smoothies et cocktails."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            102,
                            354
                        ],
                        "car": "Coque brune, pulpe épaisse et riche en huile.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "noix de coco",
                            "Brown Mature"
                        ],
                        "use": "Idéale pour râper la pulpe, faire de l’huile ou des desserts secs."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            102,
                            355
                        ],
                        "car": "Fruit à coque jaune, eau douce et pulpe tendre.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "noix de coco",
                            "Malayan Yellow"
                        ],
                        "use": "À consommer fraîche, en jus ou en cuisine tropicale."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            102,
                            356
                        ],
                        "car": "Coque orange vif, pulpe parfumée et juteuse.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "noix de coco",
                            "Chowghat Orange"
                        ],
                        "use": "Excellente pour la consommation directe et la préparation de boissons."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            102,
                            357
                        ],
                        "car": "Palmier élevé, fruit volumineux avec pulpe dense.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "noix de coco",
                            "Jamaican Tall"
                        ],
                        "use": "Parfaite pour extraire le lait de coco ou préparer des plats traditionnels."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            103,
                            358
                        ],
                        "car": "Graines allongées, crème clair, saveur douce et légèrement beurrée.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "pignon de pin",
                            "Italien (Pin parasol)"
                        ],
                        "use": "Idéal pour pesto, salades et pâtisseries."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            103,
                            359
                        ],
                        "car": "Plus gros que les italiens, goût riche et texture ferme.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "pignon de pin",
                            "Chilien"
                        ],
                        "use": "À griller légèrement pour les plats méditerranéens ou desserts."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            103,
                            360
                        ],
                        "car": "Petits, allongés, parfum subtil, très croquants.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "pignon de pin",
                            "Sibérien"
                        ],
                        "use": "Parfaits en en-cas ou pour agrémenter salades et mueslis."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            103,
                            361
                        ],
                        "car": "Taille moyenne, goût légèrement sucré, texture tendre.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "pignon de pin",
                            "Coréen"
                        ],
                        "use": "Utilisé dans les plats asiatiques ou en pâtisserie traditionnelle."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            103,
                            362
                        ],
                        "car": "Graines longues, arôme riche et goût intense de noisette.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "pignon de pin",
                            "de Pin d’Alep"
                        ],
                        "use": "Idéal pour sauces, pesto ou toasts gourmands."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            103,
                            363
                        ],
                        "car": "Graines moyennes, goût doux et légèrement résineux.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "pignon de pin",
                            "Américain"
                        ],
                        "use": "À incorporer dans pains, muffins ou salades."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            103,
                            364
                        ],
                        "car": "Taille fine, saveur délicate et croquante.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "pignon de pin",
                            "Espagnol"
                        ],
                        "use": "Parfait pour garnir plats chauds, pâtes et légumes grillés."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            103,
                            365
                        ],
                        "car": "Petit, goût sucré et texture fondante en bouche.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "pignon de pin",
                            "Marocain"
                        ],
                        "use": "Utilisé en pâtisserie ou confiserie traditionnelle."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            103,
                            366
                        ],
                        "car": "Graines longues et fines, saveur douce et aromatique.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "pignon de pin",
                            "Portugais"
                        ],
                        "use": "Parfait pour sauces, pesto et plats méditerranéens."
                    },
                    {
                        "type": [
                            1,
                            2,
                            15,
                            52,
                            103,
                            367
                        ],
                        "car": "Petite graine, goût subtil et texture croquante.",
                        "noms": [
                            "nourriture",
                            "végétale",
                            "fruits",
                            "à coque",
                            "pignon de pin",
                            "Chinois"
                        ],
                        "use": "À consommer cru, grillé ou en plats sautés."
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            210,
                            151,
                            368
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "manuel",
                            "ciseau",
                            "à bois"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            210,
                            151,
                            369
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "manuel",
                            "ciseau",
                            "à métal"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            210,
                            152,
                            370
                        ],
                        "car": "ou clé à fourche",
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "manuel",
                            "clé",
                            "plate"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            210,
                            152,
                            371
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "manuel",
                            "clé",
                            "à oeil"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            210,
                            152,
                            372
                        ],
                        "car": "fourche  + oeil",
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "manuel",
                            "clé",
                            "mixte"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            210,
                            152,
                            373
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "manuel",
                            "clé",
                            "à pipe"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            210,
                            152,
                            374
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "manuel",
                            "clé",
                            "à tube"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            210,
                            152,
                            375
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "manuel",
                            "clé",
                            "mâle"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            210,
                            152,
                            376
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "manuel",
                            "clé",
                            "à cliquet"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            210,
                            152,
                            377
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "manuel",
                            "clé",
                            "en croix"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            210,
                            152,
                            378
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "manuel",
                            "clé",
                            "à molette"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            210,
                            152,
                            379
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "manuel",
                            "clé",
                            "anglaise"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            210,
                            152,
                            380
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "manuel",
                            "clé",
                            "à griffe"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            210,
                            152,
                            381
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "manuel",
                            "clé",
                            "à sangle"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            210,
                            152,
                            382
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "manuel",
                            "clé",
                            "lavabo"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            210,
                            156,
                            383
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "manuel",
                            "scie",
                            "bois"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            210,
                            156,
                            384
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "manuel",
                            "scie",
                            "métaux"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            210,
                            157,
                            385
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "manuel",
                            "tournevis",
                            "plat"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            210,
                            157,
                            386
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "manuel",
                            "tournevis",
                            "cruciforme"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            210,
                            157,
                            387
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "manuel",
                            "tournevis",
                            "torx"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            211,
                            163,
                            388
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "électrique",
                            "scie",
                            "circulaire"
                        ]
                    },
                    {
                        "type": [
                            8,
                            27,
                            98,
                            211,
                            163,
                            389
                        ],
                        "noms": [
                            "production",
                            "outillage",
                            "atelier",
                            "électrique",
                            "scie",
                            "sauteuse"
                        ]
                    },
                    {
                        "type": [
                            1,
                            1,
                            9,
                            13,
                            33,
                            390
                        ],
                        "noms": [
                            "nourriture",
                            "animale",
                            "volaille",
                            "viande",
                            "canard",
                            "foie gras"
                        ]
                    }
                ]
            }
        ]
    },
    "contenants": {
        "nom": "un contenant",
        "levels": [
            {
                "items": [
                    {
                        "noms": [
                            "bouteille"
                        ],
                        "type": [
                            1
                        ]
                    },
                    {
                        "noms": [
                            "bocal"
                        ],
                        "type": [
                            2
                        ]
                    },
                    {
                        "noms": [
                            "boite"
                        ],
                        "type": [
                            3
                        ]
                    },
                    {
                        "noms": [
                            "sachet"
                        ],
                        "type": [
                            4
                        ]
                    },
                    {
                        "noms": [
                            "barquette"
                        ],
                        "type": [
                            5
                        ]
                    }
                ]
            },
            {
                "items": [
                    {
                        "type": [
                            1,
                            1
                        ],
                        "noms": [
                            "bouteille",
                            "verre"
                        ]
                    },
                    {
                        "type": [
                            1,
                            2
                        ],
                        "noms": [
                            "bouteille",
                            "plastique"
                        ]
                    },
                    {
                        "type": [
                            3,
                            3
                        ],
                        "noms": [
                            "boite",
                            "conserve"
                        ]
                    },
                    {
                        "type": [
                            3,
                            4
                        ],
                        "noms": [
                            "boite",
                            "carton"
                        ]
                    },
                    {
                        "type": [
                            5,
                            5
                        ],
                        "noms": [
                            "barquette",
                            "aluminium"
                        ]
                    },
                    {
                        "type": [
                            5,
                            6
                        ],
                        "noms": [
                            "barquette",
                            "plastique"
                        ]
                    },
                    {
                        "type": [
                            5,
                            7
                        ],
                        "noms": [
                            "barquette",
                            "compostable"
                        ]
                    },
                    {
                        "type": [
                            2,
                            8
                        ],
                        "noms": [
                            "bocal",
                            "verre"
                        ]
                    },
                    {
                        "type": [
                            2,
                            9
                        ],
                        "noms": [
                            "bocal",
                            "plastique"
                        ]
                    }
                ]
            },
            {
                "items": [
                    {
                        "type": [
                            3,
                            3,
                            2
                        ],
                        "noms": [
                            "boite",
                            "conserve",
                            "4 quart"
                        ]
                    },
                    {
                        "type": [
                            3,
                            3,
                            3
                        ],
                        "noms": [
                            "boite",
                            "conserve",
                            "1 quart"
                        ]
                    },
                    {
                        "type": [
                            3,
                            3,
                            4
                        ],
                        "noms": [
                            "boite",
                            "conserve",
                            "1 demi"
                        ]
                    }
                ]
            }
        ]
    }
    
}
"""
