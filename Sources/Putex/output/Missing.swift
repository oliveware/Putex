//
//  Missing.swift
//  Putex
//
//  Created by Herve Crespel on 12/12/2024.
//
import SwiftUI

struct Missing : View {
    var missing : String
    var body: some View {
        Text(missing).font(.title3)
            .foregroundColor(Color.pink)
            .padding(20)
        .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(Color.gray, lineWidth: 1))
    }
}
