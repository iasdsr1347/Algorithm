//
//  main.swift
//  BaekJ_10811
//
//  Created by 송영민 on 7/24/25.
//

import Foundation

var baskets: [Int] = []
var i: Int = 0
var j: Int = 0


if let inputNM = readLine() {
    let numNM = inputNM.split(separator: " ")
    
    let n = Int(numNM[0])!
    let m = Int(numNM[1])!
    
    if n >= 1 && n <= 100 && m >= 1 && m <= 100 {
        for t in 1...n {
            baskets.append(t)
        }
        
        for _ in 0..<m {
            if let inputIJ = readLine() {
                let numIJ = inputIJ.split(separator: " ")
                
                i = Int(numIJ[0])!
                j = Int(numIJ[1])!
                
                if i >= 1 && i <= j && j >= i && j <= n {
                    i -= 1
                    j -= 1
                    
                    baskets[i...j].reverse()
                }
            }
        }
    }else {
        print("n, m의 값을 1~100사이로 입력해주세요.")
    }
}

let result = baskets.map{String($0)}.joined(separator: " ")
print(result)
