//
//  Catalog.swift
//  Putex
//
//
//  Created by Herve Crespel on 26/02/2023.
//

import Foundation
import SwiftUI

// modèle pour générer le catalog avec generic
struct Catalog :Codable {
    enum Kind : String,Codable {
        // kind = slide
        case quit       = "quittance"
        case solde      = "solde"
        case chart      = "chart"
        case archive    = "archive"
    }
    enum Itemform : String, Codable {
        case pdf       = "pdf"
        case pdfimg    = "pdfimg"
        case png       = "png"
    }
    
    var kind: Kind = .quit
    var name: String = ""
    var parent: String = "" // path generic de retour au parent
    var label: String = ""  // label du bouton de retour au parent
    
    // item's specific attributes
    var itemids: [Int] = []
    var itemlabels: [String] = []
    // item's common attributes
    var forme = Itemform.pdf
    var path: String = ""
    var slide: String = ""
    
    init(_ kind:Kind) {
        self.kind = kind
    }
    
    
    init(site:String, initials:String, kind:Kind, folder:String = "") {
        self.kind = kind
        switch kind {
        case .chart:
            path = "\(site)/fr/intro/"
            forme = .pdfimg
            slide = "\(initials)chart"
        // initialisé par la création de la rubrique annuelle
        case .quit:
            name = "quittances\(folder)"
            parent = "intro-\(folder)"
            label = folder
            path = "\(site)/fr/intro/\(folder)/"
            forme = .pdf
            slide = "\(initials)ql\(folder)"
        case .solde:
            path = "\(site)/fr/intro/"
            forme = .pdfimg
            slide = "\(initials)solde"
        case .archive:
            forme = .pdf
        }
        
    }
    
    func saveDialog(_ root:String, _ indice:Int) -> NSSavePanel {
        var directory:String
        var filename:String
        // il faut recalculer filename et directory afin que saveDialog en tienne compte
        switch kind {
        case .quit:
            // indice est un mois [0,11]
            filename = "\(slide)\(indice+1).pdf"
            directory = "\(root)\(path)"
            //directory = "\(Siteweb.localroot)\(path)"
        case .solde:
            // indice est une année
            filename = "\(slide)\(indice).pdf"
            directory = "\(root)\(path)\(indice)/"
            //directory = "\(Siteweb.localroot)\(path)\(indice)/"
        case .chart:
            // indice est 1 ou 2
            filename = "\(slide)\(indice).pdf"
            directory = "\(root)\(path)"
            //directory = "\(Siteweb.localroot)\(path)"
        case .archive:
            filename = "Location-"
            directory = root
            //directory = "\(ApartRef.archiveroot)"
        }
        let dirurl = URL.documentsDirectory.appending(path: directory)
        
        // get the file's handler on the user's device
        let dialog = NSSavePanel()
        dialog.nameFieldStringValue = filename
        dialog.directoryURL = dirurl
        return dialog
    }
    
    func published(_ id:Int) -> Bool {
        var pub = false
        let lookfor = kind == .quit ? id + 1 : id
        for item in itemids {
            if lookfor == item {pub = true}
        }
   //     print (pub ? "déjà publié" : "nouveau")
        return pub
    }
    
    // les éléments du catalog peuvent être introduits dans le désordre
    mutating func publish(_ indice:Int) {
        switch kind {
        case .quit :
            let m = indice
            let mois = m+1
            if itemids.count == 0 {
                itemids = [mois]
                itemlabels = [JMA.moisfr[m]]
            } else {
                var inserted = false
                var newids: [Int] = []
                var newlabels: [String] = []
                for item in itemids {
                    if item < mois {
                        newids.append(item)
                        newlabels.append(JMA.moisfr[item-1])
                    } else {
                        if item == mois {
                            inserted = true
                            newids.append(item)
                            newlabels.append(JMA.moisfr[item-1])
                        } else {    // item > mois
                            if !inserted {
                                newids.append(mois)
                                newlabels.append(JMA.moisfr[m])
                                inserted = true
                            }
                            newids.append(item)
                            newlabels.append(JMA.moisfr[item-1])
                        }
                    }
                }
                if !inserted {
                    newids.append(mois)
                    newlabels.append(JMA.moisfr[m])
                }
                itemids = newids
                itemlabels = newlabels
            }
      //      print ("items : ", itemids, itemlabels)
            
        case .chart, .solde:
            insert(indice)
        case .archive:
            break   // le site web n'a plus de raison d'être apès archivage
        }
    }
    mutating func insert(_ indice:Int) {
        let new = indice
        if itemids.count == 0 {
            itemids = [new]
        } else {
            var inserted = false
            var newids: [Int] = []
            for item in itemids {
                if item < new {
                    newids.append(item)
                } else {
                    if item == new {
                        inserted = true
                        newids.append(item)
                    } else {    // item > an
                        if !inserted {
                            newids.append(new)
                            inserted = true
                        }
                        newids.append(item)
                    }
                }
            }
            if !inserted {
                newids.append(new)
            }
            itemids = newids
        }
    }
}



