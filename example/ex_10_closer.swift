import UIKit

// String을 반환하는 클로저 1
let myName : String = {
    // myName으로 들어간다
    return "정대리"
}()
print(myName)

// 매개변수를 가지고 String을 반환하는 클로저 1 : String -> String
let myRealName1 : (String) -> String = { (name: String) in
    return "개발하는 \(name)"
}
myRealName1("정대리")

// 매개변수를 가지고 Void를 반환하는 클로저 2 : String -> Void
let myRealName2 : (String) -> Void = { (name: String) in
    print("개발하는 \(name)")
}
myRealName2("정대리")
