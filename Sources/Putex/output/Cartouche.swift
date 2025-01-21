//
//  Cartouche.swift
//  Locations
//
//  Created by Herve Crespel on 11/01/2023.
//

import SwiftUI

public struct Cartouche {
    var titre: String = ""
    var lines: [String] = []
    var horizontal = true
    
    var nbcar: Int = 0
    var linemax: Int {
        var large = 0
        if nbcar == 0 {
            for line in lines {
                let nbc = line.count
                large = nbc > large ? nbc : large
            }
        } else {
            large = nbcar
        }
        if horizontal { large += titre.count + 1 }
        return large
    }
    
    public init(_ line:String) {
        lines = [line]
    }
    
    public init(_ titre: String, _ lines: [String] = [], _ hor:Bool = true, _ size: Int = 10) {
        self.titre = titre
        self.lines = lines
        horizontal = hor
        nbcar = size
    }
    
    public var astring: String {
        var cartouche = "\(titre)\n\n"
        for line in lines {
            cartouche += "\(line)\n"
        }
        return cartouche
    }
    
    public func width(_ carwidth:Int = 5) -> CGFloat {
        CGFloat(linemax * carwidth)
    }
    public func height(_ carheight:Int = 5) -> CGFloat {
        CGFloat(lines.count * carheight)
    }
    
    public mutating func add(_ line: String) {
        lines.append(line)
    }
    public mutating func add(_ cartouche: Cartouche) {
        for line in cartouche.lines {
            lines.append(line)
        }
    }
    
}

public struct CartoucheView: View {
    var cartouche:Cartouche
    var carwidth : Int = 12
    var carheight : Int = 25
    
    public init(_ titre:String, _ lines: [String] = [], _ hor:Bool = true, _ size:Int = 0) {
        cartouche = Cartouche(titre, lines, hor, size)
    }
    public init(_ c: Cartouche) { cartouche = c }
    
    public var vertical: some View {
        VStack {
            if cartouche.titre != "" {
                Text(cartouche.titre)
                    .font(.title2)
                    .padding(.bottom,3)
            }
            ForEach(0..<cartouche.lines.count, id:\.self) {
               l in
                Text(cartouche.lines[l])
                    .font(.body)
                    .multilineTextAlignment(.center)
            }
        }.frame(width: cartouche.width(carwidth), height: cartouche.height(carheight),  alignment: .center)
            .padding(5)
        
    }
    public var horizontal: some View {
        HStack(alignment: .top) {
            if cartouche.titre != "" {
                Text(cartouche.titre)
                    .font(.title2)
                    .padding(.trailing,3)
            }
            VStack {
                ForEach(0..<cartouche.lines.count, id:\.self) {
                    l in
                    Text(cartouche.lines[l])
                        .font(.body)
                    
                        .multilineTextAlignment(.center)
                }
            }
        }.frame(width: cartouche.width(carwidth), height: cartouche.height(carheight))
            .padding(5)
        
    }
    public var body:some View {
        if cartouche.horizontal { horizontal } else { vertical }
    }
}

struct CartouchePreview: View {
    var cartouche = Cartouche("titre", ["ligne 1", "ligne 2", "ligne 3"])
    
    var body: some View {
        CartoucheView(cartouche)
    }
}

#Preview("horizontal") {
    CartouchePreview()
}
#Preview("vertical") {
    CartouchePreview(cartouche : Cartouche("titre", ["ligne 1", "ligne 2", "ligne 3"], false))
}
#Preview("sans titre") {
    HStack {
        CartouchePreview(cartouche : Cartouche("", ["ligne 1", "ligne 2", "ligne 3"], false))
        
        CartouchePreview(cartouche : Cartouche("", ["ligne 1", "ligne 2", "ligne 3"]))
    }
}
