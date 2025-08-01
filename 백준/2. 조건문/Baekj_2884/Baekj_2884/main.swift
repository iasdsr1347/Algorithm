//
//  main.swift
//  Baekj_2884
//
//  Created by 송영민 on 7/9/25.
//

import Foundation

if let line = readLine() {
    let lineArry = line.split(separator: " ")
    
    if lineArry.count == 2 {
        var hourNum = Int(lineArry[0])!
        var minNum = Int(lineArry[1])!
        
        minNum -= 45
        if minNum < 0 {
            hourNum -= 1
            minNum += 60
        }
        if minNum > 60 {
            hourNum += 1
            minNum -= 60
        }
        if hourNum <= 0 {
            hourNum += 24
        }
        if hourNum >= 24 {
            hourNum -= 24
        }
        print(hourNum, minNum)
    }
}

