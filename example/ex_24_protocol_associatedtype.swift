import UIKit

// 프로토콜의 선언 - 타입 미정
protocol PetHaving {
    associatedtype T
    var pets : [T] { get set }
    mutating func gotNewPet(_ newPet: T)
}

extension PetHaving {
    mutating func gotNewPet(_ newPet: T){
        self.pets.append(newPet)
    }
}

enum Animal {
    case cat, dog, bird
}

// 프로토콜의 상속 - 타입 확정
struct Friend : PetHaving {
    var pets: [Animal] = []
}

struct Family : PetHaving {
    var pets: [String] = []
}

// 프로토콜의 사용 - 확정된 타입으로 사용
var myFriend = Friend()
myFriend.gotNewPet(Animal.cat)
myFriend.gotNewPet(Animal.dog)
myFriend.gotNewPet(Animal.bird)
myFriend.pets

var myFamily = Family()
myFamily.gotNewPet("거북이")
myFamily.gotNewPet("토끼")
myFamily.gotNewPet("강아지")
myFamily.pets

