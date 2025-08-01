//
//  main.swift
//  Baekj_10952
//
//  Created by 송영민 on 7/12/25.
//

import Foundation

while let input = readLine() {
    let nums = input.split(separator: " ")
    
    if nums.count != 2{
        continue
    }
    
    if let a = Int(nums[0]), let b = Int(nums[1])
    {
        if a == 0 || b == 0 {
            break
        }
        print(a+b)
    }else {
        break
    }
}
