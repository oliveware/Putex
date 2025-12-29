//
//  Nedeland.swift
//  Putex
//
//  Created by Herve Crespel on 13/09/2025.
//

let Nederland :Territoire = cache.get("Nederland")

let NL = """
{
    "id": 2,
    "nom": "Nederland",
    "regions": [
        {
            "id": 1,
            "nom": "Noord-Brabant",
            "km2": 4905,
            "communes": [
                {
                    "id": 1,
                    "nom": "Hertogenbosch",
                    "quartiers": []
                },
                 {
                    "id": 2,
                    "nom": "Eindhoven",
                    "quartiers": []
                }
            ]
        },
        {
            "id": 2,
            "nom": "Drenthe",
            "km2": 2633,
            "communes": [
                {
                    "id": 1,
                    "nom": "Assen",
                    "quartiers": []
                },
                 {
                    "id": 2,
                    "nom": "Emmen",
                    "quartiers": []
                }
            ]
        },
        {
            "id": 3,
            "nom": "Flevoland",
            "km2": 1412,
            "communes": [
                {
                    "id": 1,
                    "nom": "Lelystad",
                    "quartiers": []
                },
                {
                    "id": 2,
                    "nom": "Almere",
                     "quartiers": [
                        {"id":1,"nom":"Haven", "terrains":[]},
                        {"id":2,"nom":"Stad", "terrains":[
                            {"id":363, "numvoie":{"voie":"Holywoodlaan", "num":"44", "codepostal":"1325 HS"}, 
                                "parcelles":[
                                {"id":198, "cadastre":"", "surface":{"nombre":{"entiere":160},"quantité":"surface"}}
                                ]
                            }
                            ]
                        },
                        {"id":3,"nom":"Buiten", "terrains":[]},
                        {"id":4,"nom":"Hout", "terrains":[]},
                        {"id":5,"nom":"Poort", "terrains":[]}
                    ]
                }
            ]
        },
        {
            "id": 5,
            "nom": "Friesland",
            "km2": 3336,
            "communes": [
                {
                    "id": 1,
                    "nom": "Leuwarden",
                    "quartiers": []
                }
            ]
        },
        {
            "id": 6,
            "nom": "Groningen",
            "km2": 2324,
            "communes": [
                {
                    "id": 1,
                    "nom": "Groningen",
                    "quartiers": []
                }
            ]
        },
        {
            "id": 7,
            "nom": "Gelderland",
            "km2": 4964,
            "communes": [
                {
                    "id": 1,
                    "nom": "Arnhem",
                    "quartiers": []
                },
                {
                    "id": 2,
                    "nom": "Nijmegen",
                    "quartiers": []
                }
            ]
        },
        {
            "id": 8,
            "nom": "Zuid-Holland",
            "km2": 2700,
            "communes": [
                {
                    "id": 1,
                    "nom": "Den Haag",
                    "quartiers": []
                },
                {
                    "id": 2,
                    "nom": "Rotterdam",
                    "quartiers": []
                }
            ]
        },
        {
            "id": 9,
            "nom": "Noord-Holland",
            "km2": 2665,
            "communes": [
                {
                    "id": 1,
                    "nom": "Haarlen",
                    "quartiers": []
                },
                 {
                    "id": 2,
                    "nom": "Amsterdan",
                    "quartiers": []
                }
            ]
        },
        {
            "id": 10,
            "nom": "Limburg",
            "km2": 2147,
            "communes": [
                {
                    "id": 1,
                    "nom": "Maastricht",
                    "quartiers": []
                }
            ]
        },
        {
            "id": 11,
            "nom": "Overijssel",
            "km2": 3319,
            "communes": [
                {
                    "id": 1,
                    "nom": "Zwolle",
                    "quartiers": []
                },
                 {
                    "id": 2,
                    "nom": "Enschede",
                    "quartiers": []
                }
            ]
        },
        {
            "id": 12,
            "nom": "Utrecht",
            "km2": 1485,
            "communes": [
                {
                    "id": 1,
                    "nom": "Utrecht",
                    "quartiers": []
                }
            ]
        },
        {
            "id": 13,
            "nom": "Zeeland",
            "km2": 1782,
            "communes": [
                {
                    "id": 1,
                    "nom": "Middelburg",
                    "quartiers": []
                },
                {
                    "id": 2,
                    "nom": "Terneuzen",
                    "quartiers": []
                }
            ]
        }
    ]
}
"""
