//
//  main.swift
//  Baekj_8393
//
//  Created by 송영민 on 7/9/25.
//

import Foundation

if let line = readLine(),
    let n = Int(line) {
        if n >= 1 && n <= 10000 {
            var sum: Int = 0
            for i in 1...n {
                sum += i
            }
            print(sum)
        }else {
            print("n의 값을 1~10000 사이의 값으로 입력 해주세요.")
        }
}else {
    print( "1개의 정수를 입력해주세요.")
}

