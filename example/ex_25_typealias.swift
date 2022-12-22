import UIKit

protocol Naming {}
protocol Aging {}

// 타입 한개를 정의 - 구조체
typealias FullName = Naming

struct NamingStruct_1 : Naming {}
struct NamingStruct_2 : FullName {}

// 타입을 두개 이상을 정의
typealias Friend = Naming & Aging

struct FriendStruct_1 : Naming & Aging {}
struct FriendStruct_2 : Friend {}

// 배열 타입을 정의
typealias Pets = [String]

var myPets_1 : [String] = []
var myPets_2 : Pets = []

// 클로저 타입을 정의
typealias StringBlock = (String) -> Void

func sayHi(completion : StringBlock){
    print("안녕하세요?")
    completion("오늘도 빡코딩 하고 계신가요?")
}

sayHi(completion: { saying in
    print("여기서 받음 : ", saying)
})

// 클래스 안에 있는 타입을 정의
typealias MyType = MyClass.MY_TYPE

class MyClass {
    enum MY_TYPE {
        case DOG
        case CAT
        case BIRD
    }
    var myType = MY_TYPE.DOG
}

var myClass = MyClass()
myClass.myType = MyClass.MY_TYPE.DOG
myClass.myType = MyType.DOG // 더 간결해짐
