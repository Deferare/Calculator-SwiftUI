//
//  ContentView.swift
//  MyCalculator
//
//  Created by JiHoon Kang on 12/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            CalculatorView()
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
