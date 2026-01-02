//
//  Deutschland.swift
//  Putex
//
//  Created by Herve Crespel on 13/09/2025.
//

//let Deutschland = countries.read("Deutschland")
let Deutschland:Territoire = cache.get("Deutschland")

let DE = """
{
    "id": 3,
    "nom": "Deutschland",
    "regions": [
        {
            "id": 1,
            "nom": "Bade-Wurtemberg",
            "km2": 35751,
            "communes": [
                {
                    "id": 1,
                    "nom": "Stuttgart",
                    "quartiers": []
                }
            ]
        },
        {
            "id": 2,
            "nom": "Bavière",
            "km2": 70552,
            "communes": [
                {
                    "id": 1,
                    "nom": "Munich",
                    "quartiers": []
                }
            ]
        },
        {
            "id": 3,
            "nom": "Berlin",
            "km2": 892,
            "communes": [
                {
                    "id": 1,
                    "nom": "Berlin",
                    "quartiers": []
                }
            ]
        },
        {
            "id": 4,
            "nom": "Brandebourg",
            "km2": 29486,
            "communes": [
                {
                    "id": 1,
                    "nom": "Potsdam",
                    "quartiers": []
                }
            ]
        },
        {
            "id": 5,
            "nom": "Brême",
            "km2": 419,
            "communes": [
                {
                    "id": 1,
                    "nom": "Brême",
                    "quartiers": []
                }
            ]
        },
        {
            "id": 6,
            "nom": "Hambourg",
            "km2": 755,
            "communes": [
                {
                    "id": 1,
                    "nom": "Hambourg",
                    "quartiers": []
                }
            ]
        },
        {
            "id": 7,
            "nom": "Hesse",
            "km2": 21115,
            "communes": [
                {
                    "id": 1,
                    "nom": "Wiesbaden",
                    "quartiers": []
                }
            ]
        },
        {
            "id": 8,
            "nom": "Mecklembourg-Poméranie occidentale",
            "km2": 23180,
            "communes": [
                {
                    "id": 1,
                    "nom": "Schwerin",
                    "quartiers": []
                }
            ]
        },
        {
            "id": 9,
            "nom": "Basse-Saxe",
            "km2": 47635,
            "communes": [
                {
                    "id": 1,
                    "nom": "Hanovre",
                    "quartiers": []
                }
            ]
        },
        {
            "id": 10,
            "nom": "Rhénanie-du-Nord-Westphalie",
            "km2": 34098,
            "communes": [
                {
                    "id": 1,
                    "nom": "Düsseldorf",
                    "quartiers": []
                }
            ]
        },
        {
            "id": 11,
            "nom": "Rhénanie-Palatinat",
            "km2": 19853,
            "communes": [
                {
                    "id": 1,
                    "nom": "Mayence",
                    "quartiers": []
                }
            ]
        },
        {
            "id": 12,
            "nom": "Sarre",
            "km2": 2570,
            "communes": [
                {
                    "id": 1,
                    "nom": "Sarrebruck",
                    "quartiers": []
                }
            ]
        },
        {
            "id": 13,
            "nom": "Saxe",
            "km2": 18416,
            "communes": [
                {
                    "id": 1,
                    "nom": "Dresde",
                    "quartiers": []
                }
            ]
        },
        {
            "id": 13,
            "nom": "Saxe-Anhalt",
            "km2": 20446,
            "communes": [
                {
                    "id": 1,
                    "nom": "Magdebourg",
                    "quartiers": []
                }
            ]
        },
        {
            "id": 14,
            "nom": "Schleswig-Holstein",
            "km2": 15799,
            "communes": [
                {
                    "id": 1,
                    "nom": "Kiel",
                    "quartiers": []
                }
            ]
        },
         {
            "id": 15,
            "nom": "Thuringe",
            "km2": 16173,
            "communes": [
                {
                    "id": 1,
                    "nom": "Erfurt",
                    "quartiers": []
                }
            ]
        }

    ]
}
"""
