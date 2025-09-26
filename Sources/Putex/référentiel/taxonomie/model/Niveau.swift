//
//  Niveau.swift
//  Taxonomie
//
//  Created by Herve Crespel on 07/07/2025.
//

struct Niveau {
    public var zero  : Nivzero?
    public var one   : Nivone?
    public var two   : Nivtwo?
    public var three : Nivthree?
    public var four  : Nivfour?
    var five         : Nivfive?
    
    func show(_ sep:String = "-") -> String {
        var string = ""
        if let zeroniv = zero {
            string = zeroniv.nom
            if let oneniv = one {
                string = string + sep + oneniv.nom
                if let twoniv = two {
                    string = string + sep + twoniv.nom
                    if let threeniv = three {
                        string = string + sep + threeniv.nom
                        if let fourniv = four {
                            string = string + sep + fourniv.nom
                            if let fiveniv = five {
                                string = string + sep + fiveniv.nom
                            }
                        }
                    }
                }
            }
        }
        return string
    }
    var showlast: String {
        var string = ""
        if let zeroniv = zero {
            string = zeroniv.nom
            if let oneniv = one {
                string = oneniv.nom
                if let twoniv = two {
                    string = twoniv.nom
                    if let threeniv = three {
                        string = threeniv.nom
                        if let fourniv = four {
                            string = fourniv.nom
                            if let fiveniv = five {
                                string = fiveniv.nom
                            }
                        }
                    }
                }
            }
        }
        return string
    }
    
    var nom: String {
        var string = ""
        if let zeroniv = zero {
            string = zeroniv.nom
            if let oneniv = one {
                string = oneniv.nom
                if let twoniv = two {
                    string = twoniv.nom
                    if let threeniv = three {
                        string = threeniv.nom
                        if let fourniv = four {
                            string = fourniv.nom
                            if let fiveniv = five {
                                string = fiveniv.nom
                            }
                        }
                    }
                }
            }
        }
        return string
    }
    
    init(_ tid:TID, _ taxonomy:Taxonomy? = nil) {
        let taxons = taxonomy ?? Taxonomy(taxonomie)
        let zero_id = tid.zero
        if let nivzero = taxons[zero_id] {
            zero = nivzero
            if let nivone = tid.one {
                one = nivzero[nivone]
                if let nivtwo = tid.two {
                    two = one![nivtwo]
                    if let nivthree = tid.three {
                        three = two![nivthree]
                        if let nivfour = tid.four {
                            four = three![nivfour]
                            if let nivfive = tid.five {
                                five = four![nivfive]
                                if five != nil {five!.tid = tid}
                            }
                        }
                    }
                }
            }
        }
     }

   
}
