//
//  Energie.swift
//  Putex
//
//  Created by Herve Crespel on 07/11/2024.
//

import SwiftUI

struct Energie {
    var nombre:Nombre
    var unit = UnitEnergy.kilowattHours
    
    var mesure : String {
        Measurement(value:nombre.value, unit:unit)
            .formatted()
    }
}
