//
//  Cartouche.swift
//  Locations
//
//  Created by Herve Crespel on 11/01/2023.
//

import SwiftUI

struct Cartouche {
    var lines: [String] = ["titre", "ligne 1", "ligne 2"]
    
    var nbcar: Int = 0
    var linemax: Int {
        var large = 0
        if nbcar == 0 {
            for line in lines {
                let nbc = line.count
                large = nbc > large ? nbc : large
            }
            return large
        } else {
            return nbcar
        }
    }
    
    public init(_ line:String) {
        lines = [line]
    }
    
    public init(_ lines: [String] = ["titre", "ligne 1", "ligne 2"], _ size: Int = 0) {
        self.lines = lines
        nbcar = size
    }
    
    var astring: String {
        var cartouche = ""
        for line in lines {
            cartouche += "\(line)\n"
        }
        return cartouche
    }
    
    func width(_ carwidth:Int = 5) -> CGFloat {
        CGFloat(linemax * carwidth)
    }
    func height(_ carheight:Int = 5) -> CGFloat {
        CGFloat(lines.count * carheight)
    }
    
    mutating func add(_ line: String) {
        lines.append(line)
    }
    mutating func add(_ cartouche: Cartouche) {
        for line in cartouche.lines {
            lines.append(line)
        }
    }
    
}

public struct CartoucheView: View {
    var cartouche:Cartouche
    var carwidth : Int = 5
    var carheight : Int = 5
    
    public init(_ lines: [String] = ["titre", "ligne 1", "ligne 2"], _ size:Int = 0) {
        cartouche = Cartouche(lines, size)
    }
    init(_ c: Cartouche) { cartouche = c }
    
    public var body: some View {
        VStack {
            ForEach(0..<cartouche.lines.count, id:\.self) {
               l in
                Text(cartouche.lines[l])
                    .font(l == 0 ? .title2 : .body)
                    .padding(.bottom, l == 0 ? 3 : 0)
                    .multilineTextAlignment(.center)
            }
        }.frame(width: cartouche.width(carwidth), height: cartouche.height(carheight),  alignment: .center)
        
    }
}

struct CartoucheView_Previews: PreviewProvider {
    static var previews: some View {
        CartoucheView()
    }
}
