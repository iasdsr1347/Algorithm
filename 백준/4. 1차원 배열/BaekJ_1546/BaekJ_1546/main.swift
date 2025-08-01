//
//  main.swift
//  BaekJ_1546
//
//  Created by 송영민 on 7/24/25.
//

import Foundation

var score: [Double] = []

if let inputN = readLine(), let n = Int(inputN) {
    if n >= 1 && n <= 1000 {

        if let inputM = readLine() {
            let scoreM = inputM.split(separator: " ")

            for i in 0..<n {
                if Int(scoreM[i])! >= 0 && Int(scoreM[i])! <= 100 {
                    score.append(Double(scoreM[i])!)
                } else {
                    print("점수의 값은 0~100 사이여야 합니다. (최소 1개는 0보다 커야 합니다.)")
                }

            }

            if let m = score.max() {
                for i in 0..<n {
                    score[i] = score[i] / m * 100
                }
            }
        }

    } else {
        print("n의 값은 1~1000 사이여야 합니다.")
    }
}

print(score.reduce(0, +) / Double(score.count))
