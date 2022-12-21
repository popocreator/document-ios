import UIKit

// completion 이라는 클로저를 매개변수로 가지는 메소드 정의
func sayHi(completion: () -> Void) {
    print("sayHi() called")
    sleep(2) // 2초 잠깐 멈추기
    // completion 클로저 실행
    completion()
}

// 클로저 호출하기 1)
// 메소드 호출부에서 이벤트 종료를 알 수 있다.
sayHi(completion: {
    print("2초가 지났다. 1")
})
// 클로저 호출하기 2)
// 메소드 호출부에서 이벤트 종료를 알 수 있다.
sayHi(){
    print("2초가 지났다. 2")
}
// 클로저 호출하기 3)
// 메소드 호출부에서 이벤트 종료를 알 수 있다.
sayHi{
    print("2초가 지났다. 3")
}

// 한개 반환하는 클로저
func sayHiWithName(completion: (String) -> Void){
    print("sayHiWithName() called")
    sleep(2)
    // 클로저를 실행과 동시에 데이터를 반환
    completion("오늘도 빡코딩 하고 계신가요?!")
}

sayHiWithName(completion: { (comment: String) in
    print("2초 뒤에 그가 말했다! comment: ", comment)
})

sayHiWithName { comment in
    print("2초 뒤에 그가 말했다! comment: ", comment)
}

// 두개 반환하는 클로저
func sayHiWithFullName(completion: (String, String) -> Void){
    print("sayHiWithFullName() called")
    sleep(2)
    // 클로저를 실행과 동시에 데이터를 반환
    completion("빡코딩", "호롤롤로")
}

sayHiWithFullName { first, second in
    print("첫번째: \(first), 두번째: \(second)")
}

sayHiWithFullName { first, second in
    print("첫번째: \(first), 두번째: \(second)")
}

sayHiWithFullName {
    print("첫번째: \($0), 두번째: \($1)")
}

// 옵셔널 방법
func sayHiOptional(completion: (() -> Void)? = nil) {
    print("sayHi() called")
    sleep(2) // 2초 잠깐 멈추기
    // completion 클로저 실행
    completion?()
}

sayHiOptional()

sayHiOptional(completion: {
    print("2초가 지났다. 1")
})
