//
//  main.swift
//  Baekj_2753
//
//  Created by 송영민 on 7/9/25.
//

import Foundation

if let line = readLine(),
   let lineNum = Int(line) {
    if lineNum >= 1 && lineNum <= 4000 {
        if lineNum%400 == 0 {
            print(1)
        } else if lineNum%4 == 0 && lineNum%100 != 0 {
            print(1)
        } else {
            print(0)
        }
    }else {
        print("1~4000 사이의 값을 입력해주세요.")
    }
}

