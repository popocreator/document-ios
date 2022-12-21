import UIKit

// 스트럭트
struct YoutuberStruct {
    var name : String
    var subscribersCount : Int
}

var devJeong = YoutuberStruct(name: "정대리", subscribersCount: 99999)

var devJeongClone = devJeong
print("값 넣기 전 devJeongClone.name : \(devJeongClone.name)")

devJeongClone.name = "호롤롤로"
print("값 넣은 후 devJeongClone.name : \(devJeongClone.name)")
print("값 넣은 후 devJeong.name : \(devJeong.name)")

// 클래스
class YoutuberClass {
    var name : String
    var subscribersCount : Int
    // 생성자 - 즉 메모리에 올린다
    // init 으로 매개변수를 가진 생성자 메소드를 만들어야
    // 매개변수를 넣어서 그 값을 가진 객체를 만들 수 있다.
    init(name: String, subscribersCount: Int) {
        self.name = name;
        self.subscribersCount = subscribersCount;
    }
}

var jeongDaeRi = YoutuberClass(name: "정대리", subscribersCount: 99999)

var jeongDaeRiClone = jeongDaeRi
print("값 넣기 전 jeongDaeRiClone.name : \(jeongDaeRiClone.name)")

jeongDaeRiClone.name = "호롤롤로"
print("값 넣은 후 jeongDaeRiClone.name : \(jeongDaeRiClone.name)")
print("값 넣은 후 jeongDaeRi.name : \(jeongDaeRi.name)")
