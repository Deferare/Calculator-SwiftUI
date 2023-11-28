//
//  ContentView.swift
//  MyCalculator
//
//  Created by JiHoon Kang on 11/28/23.
//

import SwiftUI

struct ContentView: View {
    @State private var displayValue: String = "0"
    
    var body: some View {
        VStack {
            Spacer()
            Text(displayValue)
                .font(.system(size: 64))
                .lineLimit(1)
                .minimumScaleFactor(0.3)
            Spacer()
            VStack {
                HStack {
                    DigitButton(icon: "1")
                    DigitButton(icon: "2")
                    DigitButton(icon: "3")
                    OperButton(systemName: "divide")
                }
                HStack {
                    DigitButton(icon: "4")
                    DigitButton(icon: "5")
                    DigitButton(icon: "6")
                    OperButton(systemName: "plus")
                        
                }
                HStack {
                    DigitButton(icon: "7")
                    DigitButton(icon: "8")
                    DigitButton(icon: "9")
                    OperButton(systemName: "minus")
                }
                HStack {
                    DigitButton(icon: "AC")
                    DigitButton(icon: "0")
                    DigitButton(icon: "")
                    OperButton(systemName: "equal")
                }
                
            }
        }.padding()
    }
}

#Preview {
    ContentView()
}
