//
//  DigitButton.swift
//  MyCalculator
//
//  Created by JiHoon Kang on 11/28/23.
//

import SwiftUI

struct DigitButton: View {
    let icon: String
    
    var body: some View {
        Circle()
            .overlay(alignment: .center) {
                Text(icon)
                    .font(.system(.title))
                    .foregroundStyle(.background)
            }
    }
}

#Preview {
    DigitButton(icon: "0")
}
