import UIKit

// 레인지
// 0...5
// 0,1,2,3,4,5
for i in 0...5 {
    print(i)
}

// 0..<5
// 0,1,2,3,4
for i in 0..<5 {
    print(i)
}

// 0..<5 + 짝수
// 0,2,4
for i in 0..<5 where i % 2 == 0 {
    print(i)
}

// 사용하지 않으면 언더바로 사용
var randomInts: [Int] = [Int]()
for _ in 0..<25 {
    let randomNumber = Int.random(in: 0...100)
    randomInts.append(randomNumber)
}
