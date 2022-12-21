import UIKit

// 프로토콜의 선언 - 껍데기만
protocol Naming {
    var lastname : String { get set }
    var firstname : String { get set }
    func getName() -> String
}

// 프로토콜의 확장 - 로직을 넣을 수 있다.
extension Naming {
    func getFullname() -> String {
        return self.lastname + "" + self.firstname
    }
}

struct Friend : Naming {
    var lastname: String
    var firstname: String
    func getName() -> String {
        return self.lastname
    }
}

let myFriend = Friend(lastname: "정", firstname: "대리")
myFriend.getName()
myFriend.getFullname()



