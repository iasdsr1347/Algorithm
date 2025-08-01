//
//  main.swift
//  Baekj_10818
//
//  Created by 송영민 on 7/16/25.
//

//---------------------------------------------------------
import Foundation
//
//var maxValue = Int.min
//var minValue = Int.max
//
//if let input = readLine(),
//    let n = Int(input)
//{
//    if n >= 1 && n <= 1_000_000 {
//        if let inputNums = readLine() {
//            let arryNums = inputNums.split(separator: " ").compactMap {
//                Int($0)
//            }
//
//            for i in 0..<n {
//                let current = arryNums[i]
//
//                if current >= -1_000_000 && current <= 1_000_000 {
//                    if current > maxValue {
//                        maxValue = current
//                    } else if current < minValue {
//                        minValue = current
//                    }
//                }
//            }
//            print(minValue, maxValue)
//        }
//    }
//}

var maxValue = Int.min
var minValue = Int.max

if let input = readLine(),
   let n = Int(input)
{
    if n >= 1 && n <= 1_000_000 {
        if let inputNums = readLine() {
            let arryNums = inputNums.split(separator: " ").compactMap {Int($0)}
            
            let isValid = arryNums.allSatisfy { $0 >= -1_000_000 && $0 <= 1_000_000}
            
            if isValid && arryNums.count == n {
                if let min = arryNums.min(), let max = arryNums.max() {
                    print(min, max)
                }
            }else {
                print("입력된 수는 -1,000,000 이상 1,000,000 이하의 값이어야 하며, 총 \(n)개여야 합니다.")
            }
        }
        
    }
}

