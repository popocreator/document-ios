import UIKit

// Set 생성하기
var myNumberSet : Set<Int> = Set<Int>()

// Set 추가하기
myNumberSet.insert(1)
myNumberSet.insert(2)
myNumberSet.insert(2)
myNumberSet.insert(3)
myNumberSet.insert(3)

// Set 데이터 확인
print("myNumberSet.count: ", myNumberSet.count)
print("myNumberSet: ", myNumberSet)

for aNumber in myNumberSet {
    print("aNumger: ", aNumber)
}

// Set 안에 원하는 데이터가 있는지 확인
var myFriends : Set<String> = ["철수", "영희", "수지"]
myFriends.contains("철수")

// Set 안에 원하는 데이터를 제거
if let indexToRemove = myFriends.firstIndex(of: "수지") {
    print("indexToRemove: ", indexToRemove)
    myFriends.remove(at: indexToRemove)
}

if !myFriends.contains("수지") {
    print("내 친구중에 수지가 없다...")
}
