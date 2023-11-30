import SwiftUI

struct CalculatorView: View {
    @StateObject var viewModel = CalculatorViewModel()
    
    var body: some View {
        VStack {
            Spacer()
            displayView()
            Spacer()
            
            VStack {
                HStack {
                    DigitButton(icon: .One) { type in viewModel.tapDigit(type) }
                    DigitButton(icon: .Two) { type in viewModel.tapDigit(type) }
                    DigitButton(icon: .Three) { type in viewModel.tapDigit(type) }
                    OperButton(type: .Divide) { type in viewModel.tapOper(type) }
                }
                HStack {
                    DigitButton(icon: .Four) { type in viewModel.tapDigit(type) }
                    DigitButton(icon: .Five) { type in viewModel.tapDigit(type) }
                    DigitButton(icon: .Six) { type in viewModel.tapDigit(type) }
                    OperButton(type: .Plus) { type in viewModel.tapOper(type) }
                }
                HStack {
                    DigitButton(icon: .Seven) { type in viewModel.tapDigit(type) }
                    DigitButton(icon: .Eight) { type in viewModel.tapDigit(type) }
                    DigitButton(icon: .Nine) { type in viewModel.tapDigit(type) }
                    OperButton(type: .Minus) { type in viewModel.tapOper(type) }
                }
                HStack {
                    DigitButton(icon: .Clear) { type in viewModel.tapDigit(type) }
                    DigitButton(icon: .Zero) { type in viewModel.tapDigit(type) }
                    OperButton(type: .Multiply) { type in viewModel.tapOper(type) }
                    OperButton(type: .Equal) { type in viewModel.tapOper(type) }
                }
            }
        }
    }
}

extension CalculatorView {
    private func displayView() -> some View {
        Text("\(viewModel.displayValue)")
            .foregroundStyle(viewModel.isTappedOper ? Color.gray : Color.primary)
            .font(.system(size: 64))
            .minimumScaleFactor(0.3)
            .lineLimit(1)
    }
}

#Preview {
    CalculatorView()
}
