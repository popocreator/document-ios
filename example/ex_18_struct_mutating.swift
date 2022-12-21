import UIKit

struct BestFriend {
    var name : String
    
    mutating func changeName(newName: String){
        self.name = newName
    }
}

var myBestFriend = BestFriend(name: "정대리")
myBestFriend.changeName(newName: "개발하는 정대리")

myBestFriend.name

