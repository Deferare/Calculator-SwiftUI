//
//  OperButton.swift
//  MyCalculator
//
//  Created by JiHoon Kang on 11/28/23.
//

import SwiftUI

struct OperButton: View {
    let systemName: ContentViewModel.OperType
    let action: (ContentViewModel.OperType) -> ()
    
    var body: some View {
        
        Button(action: {
            action(systemName)
        }, label: {
            Circle()
                .foregroundStyle(.brown)
                .overlay(alignment: .center) {
                    Image(systemName: systemName.rawValue)
                        .font(.system(.largeTitle))
                        .foregroundStyle(.background)
                }
        })
    }
}

#Preview {
    OperButton(systemName: ContentViewModel.OperType.Plus) { operType in
        
    }
}
