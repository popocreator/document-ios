import UIKit

// 함수, 메소드 정의
func myFunctionFirst(name: String) -> String{
    return "안녕하세요?! \(name) 입니다!"
}

// 함수, 메소드를 호출한다. call
myFunctionFirst(name: "정대리")

// 함수, 메소드 정의
func myFunctionSecond(with name: String) -> String{
    return "안녕하세요?! \(name) 입니다!"
}

// 함수, 메소드를 호출한다. call
myFunctionSecond(with: "호롤롤로")

// 함수, 메소드 정의
func myFunctionThird(_ name: String) -> String{
    return "안녕하세요?! \(name) 입니다!"
}

// 함수, 메소드를 호출한다. call
myFunctionThird("하하하하")
