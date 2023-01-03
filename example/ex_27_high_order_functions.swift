import UIKit

func getName(_ name: String) -> String {
    return "내 이름은 \(name)"
}

func sayHello(getName: (String) -> String, name: String) -> String {
    return getName(name)
}

let resultOne = sayHello(getName: getName, name: "호롤로로")

//let numbers = [3, 7, 4, -2, 9, -6, 10, 1]

//let stringNumbers : [String] = numbers.map { (aNumber: Int) -> String in return "\(aNumber) 입니다."
//}

//stringNumbers;

let numbers = [3, 7, 4, -2, 9, -6, 10, 1]

let evenNumbers : [Int] = numbers.filter { aNumber in return aNumber % 2 == 0
}
evenNumbers

let oddNumbers : [Int] = numbers.filter { aNumber in return aNumber % 2 != 0
}
oddNumbers

