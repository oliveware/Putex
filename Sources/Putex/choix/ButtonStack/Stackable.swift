//
//  Stackable.swift
//  ButtonStack
//
//  Created by Herve Crespel on 01/07/2026.
//
public protocol Stackable {
    var label:String {set get}
    init()
    init(_ :String)
}

struct Thing: Stackable {
    var label:String
    init() { label = ""}
    init(_ label:String = "") {
        self.label = label
    }
}
