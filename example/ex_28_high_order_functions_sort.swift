import UIKit

// sort, sorted 정렬을 해 주는 것입니다.

// 배열 정렬
var myArray = [3, 4, 88, 99, 5, 6, 7, 8, 10, 20, 100]

// 배열 오름차순 - 원본 그대로 두고 정렬된 값을 리턴
var ascendingArray = myArray.sorted();
myArray

// 배열 오름차순 - 원본
myArray.sort()
myArray

// 배열 내림차순 - 원본 그대로 두고 정렬된 값을 리턴
var descendingArray = myArray.sorted(by: >);
myArray

// 배열 내림차순 - 원본 변경
myArray.sort(by: >)
myArray

