import Foundation
//Level 1
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

        guard secondNumber != 0 else {
            
            return nil
        }
        return firstNumber / secondNumber
    }
    //Level2
    // 나머지
        func remainder(firstNumber: Int, secondNumber: Int) -> Int? {
            guard secondNumber != 0 else {
                return nil
            }
            return firstNumber % secondNumber
        }

}

let calculator = Calculator()

// ex)
let additionResult = calculator.plus(firstNumber: 10, secondNumber: 5)
let subtractionResult = calculator.minus(firstNumber: 10, secondNumber: 5)
let multiplicationResult = calculator.multiply(firstNumber: 10, secondNumber: 5)
let divisionResult = calculator.divide(firstNumber: 10, secondNumber: 2)
let divisionResult2 = calculator.divide(firstNumber: 10, secondNumber: 0)
// 결과
print("덧셈결과: \(additionResult)")
print("뺼셈결과: \(subtractionResult)")
print("곱셈결과: \(multiplicationResult)")

if let divisionResult = divisionResult {
    print("나눗셈결과: \(divisionResult)")
} else { print("0으로 나눌 수 없습니다")}
//Level2 나머지 값 예시
let remainderResult = calculator.remainder(firstNumber: 5, secondNumber: 3)
let remainderResult2 = calculator.remainder(firstNumber: 6, secondNumber: 3)

if let remainderResult = remainderResult {
    print("나머지 연산 결과: \(remainderResult)")
} else {
    print("0으로 나눌 수 없습니다")
}
if let remainderResult2 = remainderResult2 {
    print("나머지 연산 결과: \(remainderResult2)")
} else {
    print("0으로 나눌 수 없습니다")
}

// 덧셈 연산 클래스
class AddOperation {
    func calculate(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber + secondNumber
    }
}

// 뺼셈 연산 클래스
class SubtractOperation {
    func calculate(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber - secondNumber
    }
}

// 곱셈 연산 클래스
class MultiplyOperation {
    func calculate(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber * secondNumber
    }
}

// 나누기 연산 클래스
class DivideOperation {
    func calculate(firstNumber: Double, secondNumber: Double) -> Double? {
        guard secondNumber != 0 else {
            return nil
        }
        return firstNumber / secondNumber
    }
}
//나머지 연산 클래스
class RemainderOperation {
    func calculate(firstNumber: Int, secondNumber: Int) -> Int? {
        guard secondNumber != 0 else {
            return nil
        }
        return firstNumber % secondNumber
    }
}

// Calculator 클래스
class Calculator2 {
    private let addOperation = AddOperation()
    private let subtractOperation = SubtractOperation()
    private let multiplyOperation = MultiplyOperation()
    private let divideOperation = DivideOperation()
    private let remainderOperation = RemainderOperation()
    
    // 덧셈
    func plus(firstNumber: Double, secondNumber: Double) -> Double {
        return addOperation.calculate(firstNumber: firstNumber, secondNumber: secondNumber)
    }
    
    // 뺄셈
    func minus(firstNumber: Double, secondNumber: Double) -> Double {
        return subtractOperation.calculate(firstNumber: firstNumber, secondNumber: secondNumber)
    }
    
    // 곱셈
    func multiply(firstNumber: Double, secondNumber: Double) -> Double {
        return multiplyOperation.calculate(firstNumber: firstNumber, secondNumber: secondNumber)
    }
    
    // 나눗셈
    func divide(firstNumber: Double, secondNumber: Double) -> Double? {
        return divideOperation.calculate(firstNumber: firstNumber, secondNumber: secondNumber)
    }

    // 나머지
    func remainder2(firstNumber: Int, secondNumber: Int) -> Int? {
        return remainderOperation.calculate(firstNumber: firstNumber, secondNumber: secondNumber)
            }
    }
let calculator2 = Calculator2()

// 예제 실행
let additionResult2 = calculator2.plus(firstNumber: 10, secondNumber: 5)
let subtractionResult2 = calculator2.minus(firstNumber: 10, secondNumber: 5)
let multiplicationResult2 = calculator2.multiply(firstNumber: 10, secondNumber: 5)
let divisionResult3 = calculator2.divide(firstNumber: 10, secondNumber: 2)
let divisionResult4 = calculator2.divide(firstNumber: 10, secondNumber: 0)
let remainderResult3 = calculator2.remainder2(firstNumber: 5, secondNumber: 3)
let remainderResult4 = calculator2.remainder2(firstNumber: 6, secondNumber: 3)

// 결과 출력
print("덧셈 결과: \(additionResult)")
print("뺄셈 결과: \(subtractionResult)")
print("곱셈 결과: \(multiplicationResult)")

if let divisionResult = divisionResult {
    print("나눗셈 결과: \(divisionResult)")
} else {
    print("0으로 나눌 수 없습니다") //0으로 나눠도 결과값은 0이 나오긴하게끔
}
if let divisionResult2 = divisionResult2 {
    print("나눗셈 결과: \(divisionResult2)")
} else {
    print("0") //0으로 나눠도 결과값은 0이 나오긴하게끔
}
if let remainderResult3 = remainderResult3 {
    print("나머지 연산 결과: \(remainderResult3)")
} else {
    print("0") //0으로 나눠도 결과값은 0이 나오긴하게끔
}

if let remainderResult4 = remainderResult4 {
    print("나머지 연산 결과: \(remainderResult4)")
} else {
    print("0") //0으로 나눠도 결과값은 0이 나오긴하게끔
}

//Level2 코드에서는 Calculator 클래스가 내부적으로 각 연산 클래스의 인스턴스를 직접 생성하여 사용함

//새로운 연산을 추가하거나 기존 연산을 교체할 때 Calculator의 코드를 수정할 필요가 없다.
