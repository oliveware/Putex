//
//  Cadrage.swift
//  Putex
//
//  Created by Herve Crespel on 30/11/2025.
//

public struct Cadrage: Codable {
    var options: [OptionArticle] = []
    
    var isNaN: Bool {options.count == 0}
    var configurable: Bool {
        if options.count == 0 { return false } else {
            return options[0].config != nil
        }
    }
    
    mutating func configure(_ id:String, _ config:Config) {
        for index in 0..<options.count {
            if options[index].id == id {
                options[index].config = config
            }
        }
    }
    
    func find(_ nom:String) -> OptionArticle {
        var found = OptionArticle("")
        for option in options {
            if option.label == nom {
                found = option
            }
        }
        return found
    }
    
    mutating func add(_ nom:String) {
        options.append(OptionArticle(nom))
    }
    
    mutating func delete(_ sup:OptionArticle) {
        var new: [OptionArticle] = []
        for option in options {
            if option.id != sup.id { new.append(option) }
        }
        options = new
    }
}
