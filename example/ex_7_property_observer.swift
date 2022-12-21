import UIKit

var myAge = 0 {
    willSet {
        print("값이 설정될 예정이다. myAge: \(myAge)")
    }
    didSet {
        print("값이 설정 되었다. myAge: \(myAge)")
    }
}

print("myAge: \(myAge)")

myAge = 20

