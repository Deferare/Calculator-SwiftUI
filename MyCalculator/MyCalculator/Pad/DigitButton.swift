//
//  DigitButton.swift
//  MyCalculator
//
//  Created by JiHoon Kang on 11/28/23.
//

import SwiftUI

struct DigitButton: View {
    let icon: String
    let action: (String) -> ()
    
    var body: some View {
        Button(action: {
            action(icon)
        }, label: {
            Circle()
                .foregroundStyle(.foreground)
                .overlay(alignment: .center) {
                    Text(icon)
                        .font(.system(.title))
                        .foregroundStyle(.background)
                }
        })
    }
}

#Preview {
    DigitButton(icon: "0") { number in
        
    }
}
