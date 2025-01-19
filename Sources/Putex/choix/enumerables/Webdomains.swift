//
//  webdomains.swift
//  Putex
//
//  Created by Herve Crespel on 07/01/2025.
//

// la liste des suffixes publics est disponible ici : https://publicsuffix.org/list/public_suffix_list.dat
// parser SwiftDomainParser pour vérifier l'existence


public enum Webdomain: String, Codable, Enumerable {
    public var id: Self { self }
    
    public static var selector: String = "domain"
    public var label: String {self.rawValue}
    
    case com = "com"
    case org = "org"
    case eu = "eu"
    case fr = "fr"
    case gov = "gov"
    case me = "me"
    case net = "net"
}
