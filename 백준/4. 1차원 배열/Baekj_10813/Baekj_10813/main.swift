//
//  main.swift
//  Baekj_10813
//
//  Created by 송영민 on 7/23/25.
//

import Foundation

var barkets: [Int] = []
var i: Int = 0
var j: Int = 0
var temp: Int = 0

if let inputNM = readLine() {
    let numNM = inputNM.split(separator: " ")

    let n = Int(numNM[0])!
    let m = Int(numNM[1])!

    if n >= 1 && n <= 100 && m >= 1 && m <= 100 {

        for z in 0..<n {
            barkets.append(z + 1)
        }

        for _ in 0..<m {
            if let inputIJ = readLine() {
                let numIJ = inputIJ.split(separator: " ")

                i = Int(numIJ[0])!
                j = Int(numIJ[1])!

                if i >= 1 && i <= j && j >= i && j <= n {
                    temp = barkets[i - 1]
                    barkets[i - 1] = barkets[j - 1]
                    barkets[j - 1] = temp
                }
            }
        }
    }

}
let result = barkets.map { String($0) }.joined(separator: " ")
print(result)
