//
//  main.swift
//  Baekj_9498
//
//  Created by 송영민 on 7/9/25.
//

import Foundation

if let line = readLine(),
   let score = Int(line) {
    if score < 0 || score > 100 {
        print("0~100 사이 값을 입력해 주세요.")
    } else {
        switch score {
        case 90...100:
            print("A")
        case 80...89:
            print("B")
        case 70...79:
            print("C")
        case 60...69:
            print("D")
        default:
            print("F")
        }
    }
    
}
