//
//  ContentView.swift
//  MyCalculator
//
//  Created by JiHoon Kang on 11/28/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        VStack {
            Spacer()
            displayView()
            Spacer()
            VStack {
                HStack {
                    DigitButton(icon: "1") { num in
                        viewModel.tapDigit(num)
                    }
                    DigitButton(icon: "2") { num in
                        viewModel.tapDigit(num)
                    }
                    DigitButton(icon: "3") { num in
                        viewModel.tapDigit(num)
                    }
                    OperButton(systemName: .Divide) { operType in
                        viewModel.tapOper(operType)
                    }
                }
                HStack {
                    DigitButton(icon: "4") { num in
                        viewModel.tapDigit(num)
                    }
                    DigitButton(icon: "5") { num in
                        viewModel.tapDigit(num)
                    }
                    DigitButton(icon: "6") { num in
                        viewModel.tapDigit(num)
                    }
                    OperButton(systemName: .Plus) { operType in
                        viewModel.tapOper(operType)
                    }
                }
                HStack {
                    DigitButton(icon: "7") { num in
                        viewModel.tapDigit(num)
                    }
                    DigitButton(icon: "8") { num in
                        viewModel.tapDigit(num)
                    }
                    DigitButton(icon: "9") { num in
                        viewModel.tapDigit(num)
                    }
                    OperButton(systemName: .Minus) { operType in
                        viewModel.tapOper(operType)
                    }
                }
                HStack {
                    DigitButton(icon: "AC") { _ in
                        viewModel.clearCalculator()
                    }
                    
                    DigitButton(icon: "0") { num in
                        viewModel.tapDigit(num)
                    }
                    
                    OperButton(systemName: .Multiply) { operType in
                        viewModel.tapOper(operType)
                    }
                    
                    OperButton(systemName: .Equal) { operType in
                        viewModel.tapOper(operType)
                    }
                }
            }
        }.padding()
    }
}

extension ContentView {
    private func displayView() -> some View {
        Text("\(viewModel.displayValue)")
            .foregroundStyle(viewModel.isTappedOper ? Color.gray : Color.primary)
            .font(.system(size: 64))
            .minimumScaleFactor(0.3)
            .lineLimit(1)
    }
}

#Preview {
    ContentView()
}
