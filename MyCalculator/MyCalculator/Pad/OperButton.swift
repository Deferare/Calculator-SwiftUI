//
//  OperButton.swift
//  MyCalculator
//
//  Created by JiHoon Kang on 11/28/23.
//

import SwiftUI

struct OperButton: View {
    let systemName: String
    
    var body: some View {
        Circle()
            .foregroundStyle(.brown)
            .overlay(alignment: .center) {
                Image(systemName: systemName)
                    .font(.system(.largeTitle))
                    .foregroundStyle(.background)
            }
    }
}

#Preview {
    OperButton(systemName: "plus")
}
