//
//  main.swift
//  BaekJ_3052
//
//  Created by 송영민 on 7/24/25.
//

import Foundation

var numArray: [Int] = []
var remainArray: [Int] = []

for i in 0..<10 {
    if let input = readLine() {
        numArray.append(Int(input)!)

        if numArray[i] >= 0 && numArray[i] <= 1000 {
            remainArray.append(numArray[i] % 42)
            
        }else {
            print("1,000보다 작은 음이 아닌 정수를 입력해주세요.")
        }
    }
}

let result = Set(remainArray).count
print(result)
