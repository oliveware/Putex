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
                            } else {
                                string = "five absent"
                            }
                        } else {
                            string = "four absent"
                        }
                    } else {
                        string = "three absent"
                    }
                } else {
                    string = "two absent"
                }
            }
        }
        return string
    }
    
    init(_ tid:TID, _ taxons:Taxonomy = Taxonomy(besoins)) {
        let zero_id = tid.zero
        if let nivzero = taxons[zero_id] {
            zero = nivzero
            if let one_id = tid.one {
                if let nivone = nivzero[one_id] {
                    one = nivone
                    if let two_id = tid.two {
                        if let nivtwo = nivone[two_id] {
                            two = nivtwo
                            if let three_id = tid.three {
                                if let nivthree = nivtwo[three_id] {
                                    three = nivthree
                                    if let four_id = tid.four {
                                        if let nivfour = nivthree[four_id] {
                                            four = nivfour
                                            if let five_id = tid.five {
                                                if let nivfive = nivfour[five_id] {
                                                    five = nivfive
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
     }
}
