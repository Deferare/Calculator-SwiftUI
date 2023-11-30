import Foundation

class CalculatorViewModel: ObservableObject {
    @Published var displayValue = "0"
    @Published var isTappedOper: Bool = false
    private var operType: OperType = .Equal
    private var prevValue = 0
    
    enum DigitType: String {
        case Zero = "0", Clear = "AC",
             One = "1", Two = "2", Three = "3",
             Four = "4", Five = "5", Six = "6",
             Seven = "7", Eight = "8", Nine = "9"
    }
    enum OperType: String {
        case Plus = "plus"
        case Minus = "minus"
        case Multiply = "multiply"
        case Divide = "divide"
        case Equal = "equal"
    }
}

extension CalculatorViewModel {
    func tapDigit(_ type: DigitType) {
        switch type {
        case .Clear:
            clearCalculator()
        default:
            if isTappedOper {
                displayValue = ""
                isTappedOper.toggle()
            }
            
            if displayValue != "0" { displayValue += type.rawValue }
            else { displayValue = type.rawValue }
        }
    }
    
    func tapOper(_ type: OperType) {
        switch type {
        case .Equal:
            switch operType {
            case .Plus:
                displayValue = "\(plusOper(prevValue, Int(displayValue)!))"
            case .Minus:
                displayValue = "\(minusOper(prevValue, Int(displayValue)!))"
            case .Multiply:
                displayValue = "\(multiplyOper(prevValue, Int(displayValue)!))"
            case .Divide:
                if let displayValue = Int(displayValue), displayValue != 0 {
                    self.displayValue = "\(divideOper(prevValue, displayValue))"
                } else {
                    clearCalculator()
                }
            default:
                break
            }
        default:
            if !isTappedOper {
                prevValue = Int(displayValue)!
                isTappedOper = true
            }
        }
        operType = type
    }
}

//MARK: Helpers
extension CalculatorViewModel {
    private func plusOper(_ a: Int,_ b: Int) -> Int {
        return a + b
    }
    
    private func minusOper(_ a: Int,_ b: Int) -> Int {
        return a - b
    }
    
    private func multiplyOper(_ a: Int,_ b: Int) -> Int {
        return a * b
    }
    
    private func divideOper(_ a: Int,_ b: Int) -> Int {
        return a / b
    }
    
    private func clearCalculator() {
        displayValue = "0"
        prevValue = 0
        operType = .Equal
        isTappedOper = false
    }
}
