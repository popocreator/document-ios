import UIKit

struct Pet {
    init(){
        print("Pet 이 생성되었다.")
    }
}

struct Friend {
    var name : String
    lazy var pet : Pet = Pet()
    
    init(_ name: String){
        self.name = name
        print("Friend 이 생성되었다.")
    }
}

var myFriend = Friend("정대리")

myFriend.pet

