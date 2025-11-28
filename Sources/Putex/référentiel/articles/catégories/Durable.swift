//
//  EquipementKind.swift
//  Semantex
//
//  Created by Herve Crespel on 24/06/2025.
//

import Putex

public enum Durable : String, Codable, Identifiable{
    public static var selector = "équipement"
    
    public var label: String { self.rawValue }
    
    static var electro: [Durable] = [
        .linge, .vaiss, .frigo, .plaque, .hotte, .four, .micron]
    static var chauffe: [Durable] = [
        .cumulus,.radiateur
        ]
    static var alim: [Durable] = [
        .compteur, .prise, .lowpower, .inter, .panel,.light, .vent, .alert]
    static var sani: [Durable] = [
        .évier, .lavabo, .shower, .bains, .wc]
    static var mob: [Durable] = [
        .meuble, .placard]
    static var ouv: [Durable] = [
        .door, .window]
    public static var all: [Durable] = electro + chauffe + alim + sani + mob + ouv + [.decor]

    
    public var id : Self { self }
    
    case linge      = "lave-linge"
    case vaiss      = "lave-vaisselle"
    case frigo      = "réfrigérateur"
    case plaque     = "plaques de cuisson"
    case hotte      = "hotte"
    case four       = "four"
    case micron     = "micro-onde"
    
    case cumulus    = "chauffe-eau"
    case radiateur  = "radiateur"
    
    case évier      = "évier"
    case lavabo     = "lavabo"
    case shower     = "douche"
    case bains      = "baignoire"
    case wc         = "toilettes"
    
    case window     = "fenêtre"
    case door       = "porte"
    
    case meuble     = "meuble"
    case placard    = "placard"
    
    case panel      = "tableau électrique"
    case compteur   = "compteur"
    case prise      = "prises 220V"
    case lowpower   = "prises spéciales"
    case inter      = "interrupteurs"
    case alert      = "détecteur"
    case vent       = "ventilateur"
    case light      = "éclairage"
    
    case decor      = "objet décoratif"
    
    case livre      = "livre"
    case bd         = "bande dessinée"
    case music      = "enregistrement musical"
    case hifi       = "son"
    case tv         = "tv"
    
    case outil      = "outillage"
    
}
