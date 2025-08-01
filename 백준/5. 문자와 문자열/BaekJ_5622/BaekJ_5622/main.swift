//
//  main.swift
//  BaekJ_5622
//
//  Created by 송영민 on 8/2/25.
//

import Foundation

var dict: [Character: Int] = [
    "A": 3, "B": 3, "C": 3,
    "D": 4, "E": 4, "F": 4,
    "G": 5, "H": 5, "I": 5,
    "J": 6, "K": 6, "L": 6,
    "M": 7, "N": 7, "O": 7,
    "P": 8, "Q": 8, "R": 8, "S": 8,
    "T": 9, "U": 9, "V": 9,
    "W": 10, "X": 10, "Y": 10, "Z": 10
    
]

func sumValue(of input: String) -> Int {
    var total = 0
    for char in input {
        if let value = dict[char] {
            total += value
        }else {
            print("A~Z까지 입력해주세요")
        }
    }
    return total
}

if let inputChar = readLine(), inputChar.count >= 2 && inputChar.count <= 15 {
    let result = sumValue(of: inputChar)
    print(result)
}else {
    print("단어의 길이를 2부터 15까지 입력해주세요")
}
