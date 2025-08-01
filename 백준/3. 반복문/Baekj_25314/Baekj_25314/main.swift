//
//  main.swift
//  Baekj_25314
//
//  Created by 송영민 on 7/10/25.
//

import Foundation

if let input = readLine(),
    let n = Int(input) {
    if n >= 4 && n <= 1000 && n % 4 == 0{
        var longCount = ""
        for _ in 1...n/4 {
            longCount += "long "
        }
        longCount += "int"
        print(longCount)
    }else {
        print("n은 4~1000 사이의 4의 배수로 입력해주세요.")
    }
}

