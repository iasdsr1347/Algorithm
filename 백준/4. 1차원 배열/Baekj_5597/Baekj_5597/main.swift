//
//  main.swift
//  Baekj_5597
//
//  Created by 송영민 on 7/24/25.
//

import Foundation

var countArry = Array(1...30)

while let input = readLine(), let number = Int(input) {
    guard number >= 1 && number <= 30 else {
        print("1~30의 숫자를 입력해주세요.")
        continue
    }
    if let index = countArry.firstIndex(of: number) {
        countArry.remove(at: index)
    }

}

for number in countArry {
    print(number)
}
