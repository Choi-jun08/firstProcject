import Foundation

class Calculator {
    // 덧셈
    func plus(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber + secondNumber
    }
    
    // 뺄셈
    func minus(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber - secondNumber
    }
    
    // 곱셈
    func multiply(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber * secondNumber
    }
    
    // 나눗셈
    func divide(firstNumber: Double, secondNumber: Double) -> Double? {
        // 0으로 나누기를 방지
        guard secondNumber != 0 else {
            print("0으로 나눌 수 없습니다")
            return 0
        }
        return firstNumber / secondNumber
    }
}

let calculator = Calculator()

// ex)
let additionResult = calculator.plus(firstNumber: 10, secondNumber: 5)          // 10 + 5 = 15
let subtractionResult = calculator.minus(firstNumber: 10, secondNumber: 5)  // 10 - 5 = 5
let multiplicationResult = calculator.multiply(firstNumber: 10, secondNumber: 5) // 10 * 5 = 50
let divisionResult = calculator.divide(firstNumber: 10, secondNumber: 0)       // 10 / 5 = 2

// 결과
print("덧셈결과: \(additionResult)")
print("뺼셈결과: \(subtractionResult)")
print("곱셈결과: \(multiplicationResult)")
if let divisionResult = divisionResult {
    print("나눗셈결과: \(divisionResult)")
}
