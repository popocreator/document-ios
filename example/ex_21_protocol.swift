import UIKit

// 프로토콜이란? 약속이다.
// 암묵적인 이름 규칙
// **ing
// **able
// **delegate

protocol Naming {
    // 우리는 이런 변수를 가지고 있을겁니다. 라고 약속
    var name : String { get set }
    // 우리는 이런 메소드를 가지고 있을겁니다. 라고 약속
    func getName() -> String
}

struct Friend : Naming {
    var name: String
    
    func getName() -> String {
        return "내 친구: " + self.name
    }
}

var myFriend = Friend(name: "철수")
myFriend.getName()

