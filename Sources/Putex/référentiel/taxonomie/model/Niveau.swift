//
//  Niveau.swift
//  Taxonomie
//
//  Created by Herve Crespel on 07/07/2025.
//

struct Niveau {
    public var nivzero  : Nivzero?
    public var nivone   : Nivone?
    public var nivtwo   : Nivtwo?
    public var nivthree : Nivthree?
    public var nivfour  : Nivfour?
    var nivfive         : Nivfive?
    
    func show(_ sep:String = "-") -> String {
        var string = ""
        if let zero = nivzero {
            string = zero.nom
            if let one = nivone {
                string = string + sep + one.nom
                if let two = nivtwo {
                    string = string + sep + two.nom
                    if let three = nivthree {
                        string = string + sep + three.nom
                        if let four = nivfour {
                            string = string + sep + four.nom
                            if let five = nivfive {
                                string = string + sep + five.nom
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
        if let zero = nivzero {
            string = zero.nom
            if let one = nivone {
                string = one.nom
                if let two = nivtwo {
                    string = two.nom
                    if let three = nivthree {
                        string = three.nom
                        if let four = nivfour {
                            string = four.nom
                            if let five = nivfive {
                                string = five.nom
                            }
                        }
                    }
                }
            }
        }
        return string
    }
    
    init(_ tid:TID) {
        let nivzero_id = tid.nivzero
        if let nivzero = Taxonomy(taxonomie)[nivzero_id] {
            self.nivzero = nivzero
            if tid.nivone != nil {
                let nivone = nivzero[tid.nivone!]
                self.nivone = nivone
                if tid.nivtwo != nil {
                    let nivtwo = nivone![tid.nivtwo!]
                    self.nivtwo = nivtwo
                    if tid.nivthree != nil {
                        let nivthree = nivtwo![tid.nivthree!]
                        self.nivthree = nivthree
                        if tid.nivfour != nil {
                            let nivfour = nivthree![tid.nivfour!]
                            self.nivfour = nivfour
                            if tid.nivfive != nil {
                                nivfive = nivfour![tid.nivfive!]
                                if nivfive != nil {nivfive!.tid = tid}
                            }
                        }
                    }
                }
            }
        }
     }
    
   
    
 /*  public  init(_ tid:[Int]) {
        nivone = Nivzero.europe[tid[0]]
        if tid.count > 1 {
            nivtwo = nivone[tid[1]]
        }
        if tid.count > 2 {
            nivthree = nivtwo![tid[2]]
        }
        if tid.count > 3 {
            nivfour = nivthree![tid[3]]
        }
        if tid.count > 4 {
            nivfive = nivfour![tid[4]]
        }
       /* if tid.count > 5 {
            batiment = nivfive![tid[5]]
        }*/
    }
 */
   
}
