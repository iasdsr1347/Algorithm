//
//  main.swift
//  Baekj_10871
//
//  Created by 송영민 on 7/16/25.
//

import Foundation

var printNums: [Int] = []

if let input = readLine(){
    let numArry = input.split(separator: " ").compactMap{Int($0)}
    let n = numArry[0]
    let x = numArry[1]
    
    if n >= 1 && x <= 10000 {
        if let inputNums = readLine(){
            let numNums = inputNums.split(separator: " ").compactMap{Int($0)}
            
            for i in 0..<n{
                if numNums[i] >= 1 && numNums[i] <= 10000 && numNums[i] < x {
                    printNums.append(numNums[i])
                }
            }
        }
        print(printNums.map{String($0) }.joined(separator: " "))
        
    }
    
}


