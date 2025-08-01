//
//  main.swift
//  Baekj_2439
//
//  Created by 송영민 on 7/12/25.
//

import Foundation

if let input = readLine(),
   let n = Int(input){
    if n >= 1 && n <= 100 {
        for i in 1...n {
            let spaces = String(repeating: " ", count: n - i)
            let stars = String(repeating: "*", count: i)
            
            print(spaces + stars)
        }
    }else {
    print("n의 값을 1~100사이로 입력해주세요")
    }
}else {
    print("숫자를 입력해 주세요")
}
