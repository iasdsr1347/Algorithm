//
//  main.swift
//  Backj_10869
//
//  Created by 송영민 on 7/9/25.
//

import Foundation

if let line = readLine() {
    let lineArr = line.components(separatedBy: " ")
    
    if lineArr.count == 2 {
        let a = Int(lineArr[0])!
        let b = Int(lineArr[1])!
        if a >= 1 && b <= 10000{
            //print(String(format: "%.9f", a/b))
            print(a+b)
            print(a-b)
            print(a*b)
            print(a/b)
            print(a%b)
        }else {
            print("a가 0보다 크고, b가 10보다 작아야 합니다.")
        }
    }else{
        print("입력이 잘못되었습니다.")
    }
}
