//
//  main.swift
//  Baekj_10807
//
//  Created by 송영민 on 7/16/25.
//

import Foundation

var count = 0
if let inputN = readLine(),
   let n = Int(inputN){
    if n >= 1 && n <= 100 {
        if let inputNums = readLine()
        {
            let numsArry = inputNums.split(separator: " ").compactMap{Int($0)}
            if let inputV = readLine(),
            let v = Int(inputV){
                if v >= -100 && v <= 100{
                    for i in 0...numsArry.count-1{
                        if numsArry[i] == v{
                            count += 1
                        }
                    }
                    print(count)
                }
            }
        }
    }
}
