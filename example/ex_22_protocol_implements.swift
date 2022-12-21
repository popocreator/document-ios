import UIKit

// 프로토콜 상속 사용법
protocol Naming {
    var name : String { get set }
    func getName() -> String
}

protocol Aging {
    var age: Int { get set }
}

protocol UserNotifiable : Naming, Aging {}

// 프로토콜을 구조체에 상속받기
struct MyFriend : UserNotifiable {
    var name: String
    var age: Int
    
    func getName() -> String {
        return self.name
    }
}

var myFriend = MyFriend(name: "철수", age: 19)
myFriend.name
myFriend.age


// 프로토콜을 클래스에 상속받기
class MyBestFriend: UserNotifiable {
    var name: String = ""
    var age: Int = 0
    
    func getName() -> String {
        return self.name
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

var myBestFriend = MyBestFriend(name: "철수", age: 19)
myBestFriend.name
myBestFriend.age



