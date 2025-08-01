//
//  main.swift
//  BaekJ_9086
//
//  Created by 송영민 on 7/25/25.
//

import Foundation

if let input = readLine() {
    let t = Int(input)!

    if t >= 1 && t <= 10 {
        for _ in 0..<t {
            if let input2 = readLine() {
                if input2.count >= 1 && input2.count <= 1000 {
                    let charArray = Array(input2)
                    
                    print("\(charArray.first!)\(charArray.last!)")
                } else {
                    print("1~1000 사이의 문자를 입력하세요.")
                }
            }
        }
    } else {
        print("1에서 10 사이의 값을 입력하세요.")
    }
}
