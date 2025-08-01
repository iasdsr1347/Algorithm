//
//  main.swift
//  Baekj_2739
//
//  Created by 송영민 on 7/9/25.
//

import Foundation

if let line = readLine() {
    let num1 = Int(line)!
    
    for i in 1...9 {
        print("\(num1) * \(i) = \(num1*i)")
    }
}

