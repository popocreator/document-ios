import UIKit

class Friend {
    var name : String
    
    init(_ name: String) {
        self.name = name
    }
    
    func sayHi(){
        print("안녕?! 난 \(self.name) 라고 해")
    }
}

class BestFriend : Friend {
    
    // override 부모의 메소드를 가져왔다.
    override init(_ name: String) {
        // 상속받은 init 함수를 무조건 써줘야 합니다.
        super.init("베프 " + name)
    }
    
    override func sayHi() {
        super.sayHi()
    }
}

let myFriend = Friend("정대리")
myFriend.sayHi()

let myBestFriend = BestFriend("영희")
myBestFriend.sayHi()

