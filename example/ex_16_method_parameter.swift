import Foundation

// 사용법 1) 매개변수를 변경하지 못하는 경우
func sayName(_ name: String){
    print("안녕?! 난 \(name) 라고 해")
}

sayName("정대리")

// 사용법 2) 매개변수를 변경할 수 있는 경우
func sayHi(_ name: inout String){
    name = "개발하는 " + name
    print("안녕?! 난 \(name) 라고 해")
}

var name = "정대리"
sayHi(&name)
