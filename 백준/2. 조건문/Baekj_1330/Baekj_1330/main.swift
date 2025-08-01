//
//  main.swift
//  Baekj_1330
//
//  Created by 송영민 on 7/9/25.
//

import Foundation

if let line = readLine() {
    let lineArry = line.components(separatedBy: " ")
    
    if lineArry.count == 2,
       let a = Int(lineArry[0]),
       let b = Int(lineArry[1]) {
        if a > b {
            print(">")
        }
        if a < b {
            print("<")
        }
        if a == b {
            print("==")
        }
    }
}

