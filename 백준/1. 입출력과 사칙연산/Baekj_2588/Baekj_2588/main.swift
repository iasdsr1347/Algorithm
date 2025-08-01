//
//  main.swift
//  Baekj_2588
//
//  Created by 송영민 on 7/9/25.
//

import Foundation

if let line1 = readLine() {
    if let nuM2 = readLine() {
        let nuM1 = Int(line1)!
        let digits = nuM2.compactMap { Int(String($0)) }
        
        let a = digits[0]
        let b = digits[1]
        let c = digits[2]
        
        if let numBer2 = Int(nuM2) {
            print(nuM1*c)
            print(nuM1*b)
            print(nuM1*a)
            print(nuM1*numBer2)
        }
    }
}

