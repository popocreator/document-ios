import Foundation

// 에러를 만드는 방법
enum MismatchError: Error {
    case nameMismatch
    case numberMismatch
}

func guessMyName(name input: String) throws {
    print("guessMyName() called")
    
    if input != "정대리" {
        print("틀렸다")
        throw MismatchError.nameMismatch
    }
    
    print("맞췄다")
}

// 에러를 무시하는 방법
try? guessMyName(name: "김대리")

// 에러를 잡는 방법
do {
    try guessMyName(name: "이대리")
} catch {
    print("잡은 에러: \(error)")
}


/// 번호를 맞춘다
/// - Parameter input: 사용자 숫자 입력
/// - Returns: bool 맞췄는지 여부
func guessMyNumber(number input: Int) throws -> Bool {
    print("guessMyNumber() called")
    
    if input != 10 {
        print("틀렸다")
        throw MismatchError.numberMismatch
    }
    
    print("맞췄다")
    return true
}

// 에러를 무시하는 방법
try? guessMyNumber(number: 9)

// 에러를 잡는 방법
do {
    let receivedValue = try guessMyNumber(number: 9)
} catch {
    print("잡은 에러: \(error)")
}
