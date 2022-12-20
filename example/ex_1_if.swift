import Foundation

// 다크모드 여부
var isDarkMode : Bool = false

// 방법 1)
if (isDarkMode == true) {
    print("다크모드 입니다.")
} else {
    print("다크모드가 아닙니다.")
}

// 방법 2)
if isDarkMode {
    print("다크모드 입니다.")
} else {
    print("다크모드가 아닙니다.")
}

// 방법 3)
var title : String = isDarkMode == true ? "다크모드 입니다." : "다크모드가 아닙니다."
print("title: \(title)")
