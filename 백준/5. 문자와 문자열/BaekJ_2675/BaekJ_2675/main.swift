//
//  main.swift
//  BaekJ_2675
//
//  Created by 송영민 on 7/28/25.
//

import Foundation

if let numT = readLine(), let t = Int(numT), t >= 1 && t <= 1000 {
    for _ in 0..<t {
        if let inputRS = readLine() {
            let rs = inputRS.split(separator: " ")
            let r = Int(rs[0])!
            let s = Array(rs[1])
            
            var result = ""
            for ch in s {
                result += String(repeating: ch, count: r)
            }
            print(result)
        }
        
    }
}else {
    print("1~1000 사이의 값을 입력하세요.")
}
