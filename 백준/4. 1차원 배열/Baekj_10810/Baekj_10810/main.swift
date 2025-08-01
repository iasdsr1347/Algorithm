//
//  main.swift
//  Baekj_10810
//
//  Created by 송영민 on 7/17/25.
//

import Foundation

var basKets: [Int] = []
var i: Int = 0
var j: Int = 0
var k: Int = 0

if let inputNM = readLine() {
    let numNM = inputNM.split(separator: " ")

    let n = Int(numNM[0])!
    let m = Int(numNM[1])!

    if n >= 1 && n <= 100 && m >= 1 && m <= 100 {
        for _ in 0..<n {
            basKets.append(0)
        }
        
        for _ in 0..<m {
            if let inputIJK = readLine() {
                let numijk = inputIJK.split(separator: " ")

                i = Int(numijk[0])!
                j = Int(numijk[1])!
                k = Int(numijk[2])!
                
                if i >= 1 && i <= n && j >= i && j <= n && k >= 1 && k <= n {
                    for t in i-1..<j {
                        basKets[t] = k
                    }

                    }else {
                        print(
                            "값의 입력을 1 <= i <= j <= n , 1 <= k <= n 으로 입력해주세요."
                        )
                }
            }
        }

    } else {
        print("n과 m의 값을 1 이상 100 이하로 입력해주세요.")
    }
}

let result = basKets.map { String($0)}.joined(separator: " ")
print(result)


