//
//  main.swift
//  Baekj_11022
//
//  Created by 송영민 on 7/12/25.
//

import Foundation

if let testline = readLine(),
   let t = Int(testline)
{
    for x in 1...t {
        if let lineAB = readLine() {
            let nums = lineAB.components(separatedBy: " ")
            
            if nums.count == 2,
                let a = Int(nums[0]),
                let b = Int(nums[1]){
                    if a > 0 && b < 10 {
                        print("Case #\(x): \(a) + \(b) = \(a+b)")
                    }else
                    {
                        print("a 값을 0보다 크게, 값을 10보다 작게 입력해주세요.")
                    }
            }
        }
    }
}
else
{
    print("T의 값을 입력해주세요.")
}
