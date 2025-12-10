//
//  sampledata.swift
//  Putex
//
//  Created by Herve Crespel on 11/10/2024.
//
import Taxionomy

public let tables = [
    "banques": Coderef(
            Mot("banque", "banques", .f),
            [
                Head("30003", "Société Générale"),
                Head("10278", "Crédit Mutuel"),
                Head("20041", "Banque Postale")
            ]
        ),
    "agences": Coderef(
            Mot("agence", "agences", .f),
            [
                Head("01288", "Lambersart Canteleu"),
                Head("02717", "CCM Lomme"),
                Head("01005", "Lille Centre Financier")
            ]
        )
    ]
