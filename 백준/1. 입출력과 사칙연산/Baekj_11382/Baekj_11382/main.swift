//
//  main.swift
//  Baekj_11382
//
//  Created by 송영민 on 7/9/25.
//

import Foundation

if let line = readLine() {
    let lineArry = line.components(separatedBy: " ")
    
    if lineArry.count == 3,
       let a = Int(lineArry[0]),
       let b = Int(lineArry[1]),
       let c = Int(lineArry[2]) {
        
        print(a+b+c)
    }else {
        print("3개의 숫자를 입력해 주세요.")
    }
}

