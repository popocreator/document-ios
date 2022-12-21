import UIKit

// 옵셔널이란?
// 값이 있는지 없는지 모른다.
var someVariable : Int? = nil

if someVariable == nil {
    someVariable = 90
}

print("someVariable: ", someVariable)

// 언랩핑이란? 랩 즉 감싸져있는 것을 벗기는 것

// 언랩핑 방법 1)
if let otherVariable = someVariable {
    print("언래핑 되었다. 즉 값이 있다. otherVariable : \(otherVariable)")
} else {
    print("값이 없다.")
}

// 언랩핑 방법 2)
// 값이 없으면 10을 넣겠습니다.
let myValue = someVariable ?? 10
print("myValue: \(myValue)")

// 3)
var firstValue : Int? = 30
var secondValue : Int? = nil

print("firstValue: \(firstValue)")
print("secondValue: \(secondValue)")

unwrap(firstValue)
unwrap(secondValue)

func unwrap(_ parameter: Int?){
    // 값이 없으면 리턴해버린다.
    // 값이 있다면,unWrappedParam = parameter
    // if let 또는 guard let
    guard let unWrappedParam = parameter else {
        // 값이 없다면 아무런 처리를 하지 않겠다.
        return
    }
    print("unWrappedParam: \(unWrappedParam)")
}
