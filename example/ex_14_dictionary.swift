import Foundation

// 딕셔너리 - 키 : 값
// 데이터 저장하기
var myFriends = [
    "bestFriend" : "정대리",
    "highschool" : "영희"
]

// 데이터 불러오기 1
let myBestFriend = myFriends["bestFriend"]
let highSchoolFriend = myFriends["highschool"]

// 데이터 불러오기 2
let youtubeFriend = myFriends["youtube", default: "친구없음"]

// 데이터 수정 1
myFriends["bestFriend"] = "개발하는 정대리"
let myBF = myFriends["bestFriend"]

// 데이터 추가 1
myFriends["newFriend"] = "철수"
let newFriend = myFriends["newFriend"]

// 데이터 추가 2
myFriends.updateValue("수잔", forKey: "girlFriend")
let girlFriend = myFriends["girlFriend"]

// 빈 딕셔너리
let emptyDictionary1 : [String : Int] = Dictionary<String, Int>()
let emptyDictionary2 : [String : Int] = [String : Int]()
let emptyDictionary3 = [String : Int]()

// 딕셔너리 프린트
print("myFriends.count : ", myFriends.count)
for friend in myFriends {
    print("friend :", friend)
}
