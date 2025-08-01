//
//  main.swift
//  BaekJ_11720
//
//  Created by 송영민 on 7/25/25.
//

import Foundation

if let input = readLine(), let n = Int(input), n >= 1 && n <= 100 {
    if let inputNum = readLine() {

        let numArray = inputNum.compactMap { Int(String($0)) }
        
        let sum = numArray.reduce(0, +)
        print(sum)
    }

}
