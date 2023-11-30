//
//  OperButton.swift
//  MyCalculator
//
//  Created by JiHoon Kang on 11/28/23.
//

import SwiftUI

struct OperButton: View {
    let type: CalculatorViewModel.OperType
    let action: (CalculatorViewModel.OperType) -> ()
    
    var body: some View {
        Button(action: {
            action(type)
        }, label: {
            Circle()
                .foregroundStyle(.brown)
                .overlay(alignment: .center) {
                    Image(systemName: type.rawValue)
                        .font(.system(.largeTitle))
                        .foregroundStyle(.background)
                }
        })
    }
}

#Preview {
    OperButton(type: .Plus) { operType in
        
    }
}
