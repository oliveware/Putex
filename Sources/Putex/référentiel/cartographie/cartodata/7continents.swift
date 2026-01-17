//
//  cartodata.swift
//  Putex
//
//  Created by Herve Crespel on 01/11/2024.
//
import Fichiers

/*let continents = """
{"sept" : [
    {   "id":1, "nom":"Europe", "territoires": [\(FR), \(NL), \(DE), \(ES), \(GBE), \(Cymru)] },
    {   "id":2, "nom":"Amérique du nord", "territoires": [] },
    {   "id":3, "nom":"Amérique du sud", "territoires": [] },
    {   "id":4, "nom":"Océanie", "territoires": [] },
    {   "id":5, "nom":"Asie", "territoires": [] },
    {   "id":6, "nom":"Afrique", "territoires": [] },
    {   "id":7, "nom":"Antartique", "territoires": [] }
]}
"""*/

//let countries = ClassCache<Territoire>()

let Europe = Continent( 1, "Europe", [ "France","Nederland","Deutschland","Espana","England","Cymru" ]
)
let NorthAmerica = Continent( 2, "Amérique du nord", ["Canada","Groenland"])
    // ["Canada","USA","Groenland","Mexico"])
let SouthAmerica = Continent( 3, "Amérique du sud", [])
    // ["Panama","Costa Rica","Brésil", "Argentine", "Chili", "Pérou", "Bolivie", "Colombie", "Venezuela"]
let Africa = Continent( 4, "Afrique", [])
    // ["Algérie","Maroc","Tunisie"]
let Asia = Continent( 5, "Asie", [])
    // ["Chine","Vietnam","Thailand","Laos","Cambodge", "SriLanka","Taiwan","Japon","NorthCorea","SouthCorea"])
let Oceanie = Continent( 6, "Océanie", [])
    // ["Australie","Indonésie","Philippines", "New Zealand",  "Nouvelle Calédonie"]
let Antartica = Continent( 7, "Antartique", [])

let Eurasie = Continent(525, "Eurasie", parts:[Europe,Asia])
