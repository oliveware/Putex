//
//  ConsoView.swift
//  Locations
//
//  Created by Herve Crespel on 11/01/2023.
//

import SwiftUI

public struct FormattedRow: View {
    
    var cols: [String]
    var large: [CGFloat] = [50,85,120,120]
    
    public init(cols:[String] = ["", "litre", "kWh", "kWh"], large:[CGFloat] = [50,85,120,120]) {
        self.cols = cols
        self.large = large
    }
   
    
    public var body: some View {
        HStack {
            ForEach(0..<cols.count, id:\.self) {
                col in
                Text(cols[col]).frame(width:large[col])
            }
        }
    }
    
}

struct ConsoLine_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            FormattedRow(cols: [ "jour", "eau", "heures creuses", "heures pleines"])
            FormattedRow(cols: [ "", "litre", "kWh", "kWh"]).padding(.bottom,7)
            FormattedRow(cols: [ "7", "12", "23", "45"])
        }
    }
}
