//
//  cartodata.swift
//  Putex
//
//  Created by Herve Crespel on 01/11/2024.
//
import Fichiers

let continents = """
{"sept" : [
    {   "id":7, "nom":"Antartique", "territoires": [] },
    {   "id":1, "nom":"Europe", "territoires": [\(FR), \(NL), \(DE), \(ES), \(GBE), \(Cymru)] },
    {   "id":2, "nom":"Amérique du nord", "territoires": [] },
    {   "id":3, "nom":"Amérique du sud", "territoires": [] },
    {   "id":4, "nom":"Océanie", "territoires": [] },
    {   "id":5, "nom":"Asie", "territoires": [] },
    {   "id":6, "nom":"Afrique", "territoires": [] }
]}
"""

let countries = ClassCache<Territoire>()

