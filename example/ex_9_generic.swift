import UIKit

struct MyArray<T> {
    
    // 제네릭을 담은 빈 배열
    var elements : [T] = [T]()
    
    // 생성자
    init(_ elements: [T]) {
        self.elements = elements
    }
}

var mySomeArray = MyArray([1,2,3])
print("mySomeArray : \(mySomeArray)")

var myStringArray = MyArray(["가","나","다"])
print("myStringArray : \(myStringArray)")

struct Friend {
    var name: String
}

let firstFriend = Friend(name: "철수")
let secondFriend = Friend(name: "영희")
let thirdFriend = Friend(name: "수진")

var myFriendArray = MyArray([firstFriend,secondFriend,thirdFriend])
print("myFriendArray: \(myFriendArray)")
