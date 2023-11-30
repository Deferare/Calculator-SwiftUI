
import Foundation

class ContentViewModel: ObservableObject {
    @Published var displayValue = "0"
    @Published var isTappedOper: Bool = false
    private var operType: OperType = .Equal
    private var value = 0
    
    enum OperType: String {
        case Plus = "plus"
        case Minus = "minus"
        case Multiply = "multiply"
        case Divide = "divide"
        case Equal = "equal"
    }
}

extension ContentViewModel {
    func tapDigit(_ num: String) {
        if isTappedOper {
            displayValue = ""
            isTappedOper.toggle()
        }
        
        if displayValue != "0" { displayValue += num }
        else { displayValue = num }
    }
    
    func tapOper(_ oper: OperType) {
        switch oper {
        case .Equal:
            switch operType {
            case .Plus:
                displayValue = "\(value + Int(displayValue)!)"
            case .Minus:
                displayValue = "\(value - Int(displayValue)!)"
            case .Multiply:
                displayValue = "\(value * Int(displayValue)!)"
            case .Divide:
                displayValue = "\(value / Int(displayValue)!)"
            default:
                break
            }
        default:
            if displayValue != "0" {
                value = Int(displayValue)!
                isTappedOper = true
            }
        }
        operType = oper
    }
}

//MARK: Helpers
extension ContentViewModel {
    func clearCalculator() {
        displayValue = "0"
        value = 0
        operType = .Equal
        isTappedOper = false
    }
}
