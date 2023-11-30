//
//  DigitButton.swift
//  MyCalculator
//
//  Created by JiHoon Kang on 11/28/23.
//

import SwiftUI

struct DigitButton: View {
    let icon: CalculatorViewModel.DigitType
    let action: (CalculatorViewModel.DigitType) -> ()
    
    var body: some View {
        Button(action: {
            action(icon)
        }, label: {
            Circle()
                .foregroundStyle(.foreground)
                .overlay(alignment: .center) {
                    Text(icon.rawValue)
                        .font(.system(.title))
                        .foregroundStyle(.background)
                }
        })
    }
}

#Preview {
    DigitButton(icon: .Zero) { number in
        
    }
}
