//
//  main.swift
//  Beakj_3003
//
//  Created by 송영민 on 8/3/25.
//

import Foundation

let countArray = [1, 1, 2, 2, 2, 8]
var resultArray: [Int] = []

if let input = readLine() {
    let inputA = input.split(separator: " ")
    let inputArray = inputA.compactMap{(Int($0))}
    
    for i in 0..<inputA.count {
        resultArray.append(countArray[i] - inputArray[i])
        
    }
    print(resultArray.map{ String($0) }.joined(separator: " "))
}
