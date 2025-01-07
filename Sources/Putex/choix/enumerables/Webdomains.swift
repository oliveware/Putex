//
//  webdomains.swift
//  Putex
//
//  Created by Herve Crespel on 07/01/2025.
//

public enum Webdomain: String, Codable, Enumerable {
    public var id: Self { self }
    
    public static var selector: String = "domain"
    public var label: String {self.rawValue}
    
    case com = "com"
    case org = "org"
    case eu = "eu"
    case fr = "fr"
}
